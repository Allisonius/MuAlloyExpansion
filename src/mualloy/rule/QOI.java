package mualloy.rule;

import edu.mit.csail.sdg.ast.Type;
import java.util.ArrayList;
import java.util.List;
import mualloy.util.MInfo;
import mualloy.util.MutantEquivalenceChecker;
import parser.ast.nodes.BinaryExpr;
import parser.ast.nodes.BinaryFormula;
import parser.ast.nodes.Body;
import parser.ast.nodes.ExprOrFormula;
import parser.ast.nodes.FieldExpr;
import parser.ast.nodes.ITEFormula;
import parser.ast.nodes.ListFormula;
import parser.ast.nodes.ModelUnit;
import parser.ast.nodes.Node;
import parser.ast.nodes.Paragraph;
import parser.ast.nodes.PredOrFun;
import parser.ast.nodes.Predicate;
import parser.ast.nodes.QtFormula;
import parser.ast.nodes.SigExpr;
import parser.ast.nodes.UnaryExpr;
import parser.ast.nodes.UnaryFormula;
import parser.ast.visitor.CloneVisitor;
import parser.etc.MutationData;
import parser.exception.UnsupportedOptionException;
import parser.opt.Opt;
import parser.util.AlloyUtil;

/**
 * Unary Operator Insertion.
 */
public class QOI {

  /**
   * Insert * (reflexive transitive closure), ^ (transitive closure) and ~ (transpose)
   */
	
	 public static List<MutationData> mutate(SigExpr sigExpr, ModelUnit mu, Opt opt,
		      MInfo mi) {
		    List<MutationData> res = new ArrayList<>();
		    if (mi.getType() == MInfo.MType.IGNORE) {
		      return res;
		    }
		    
		    boolean inQuant =  false;
		    Node parent = sigExpr.getParent();
		    while(!(parent instanceof Predicate) ) { //or list formula?
		    	if(parent instanceof QtFormula)
		    		inQuant = true;
		    	parent = parent.getParent();
		    }
		    
		    
		    
		    if(!inQuant) {
		    	
		    	String body = "";
		    	
		    	
				    parent = ((Predicate)parent).getBody();
				    boolean inList = false;
				    
				    if(((Body)parent).getBodyExpr() instanceof ListFormula){
				    	ListFormula listFormula = (ListFormula) ((Body)parent).getBodyExpr();
				    	inList = true;
				    	parent = sigExpr.getParent();
				    	Node child = sigExpr;
					    while(!(parent instanceof ListFormula) ) { //or list formula?
					    	child = parent;
					    	parent = parent.getParent();
					    }
				    	
				    	body = child.accept(opt.getPSV(), null);
				    	//body = ((ListFormula)parent).getArguments().get(0).accept(opt.getPSV(), null);
				    }
				    else
				    	body = ((Body)parent).getBodyExpr().accept(opt.getPSV(), null);
		 
		    	String original = body;
		    	
		    	ArrayList<String> quantifers = new ArrayList<String>();
		    	quantifers.add("all"); quantifers.add("some"); quantifers.add("no");
		    	
		    	ArrayList<String> dividers = new ArrayList<String>();
				dividers.add(" "); dividers.add("\\."); dividers.add("\\("); dividers.add("\\)"); dividers.add("\\|"); 
				dividers.add("\\{"); dividers.add("\\}"); dividers.add("\\&"); dividers.add("\\+"); dividers.add("\\-"); 
				dividers.add("\\<"); dividers.add("\\>");  dividers.add("\\["); dividers.add("\\]"); dividers.add("\\'"); 
				dividers.add("\\,"); dividers.add("\\#"); dividers.add("\\~"); dividers.add("\\^"); dividers.add("\\*");
				dividers.add("\\="); dividers.add("\\<"); dividers.add("\\>"); dividers.add("\\;"); dividers.add("\\:");
				
		    	for(String quant: quantifers) {
		    		String var = "var123456";
		    		String type = sigExpr.accept(opt.getPSV(), null);
		    		String qtFormula = "(" + quant +" " + var + " : " + sigExpr.accept(opt.getPSV(), null) + " { ";
		    		String newBody = body;
	        		for(String div1 : dividers) {
	        			for(String div2 : dividers) {
	        				newBody = newBody.replaceAll(div1 + type + div2, div1 + var + div2);
	        			}
	        		}
		        	qtFormula += newBody;
		    		qtFormula += "})";
		    	
		    	
		    	String mutatedNodePathAsString = AlloyUtil.computeNodePathAsString(sigExpr, opt.getPSV());
	            String mutant = mu.accept(opt.getPSV(), null);
	            
	
		               String equivModel;
		               switch (mi.getType()) {
		                 case PRED:
		                 case FUN:
		                   PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode()
		                       .accept(new CloneVisitor(), null);
		                   equivModel = MutantEquivalenceChecker
		                       .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
		                   String insert [] = equivModel.split(mutatedPredOrFun.getName());
		                   //if(inList)
		                //	   equivModel = in[0] + mutatedPredOrFun.getName() + in[1].replace(original, qtFormula) + mutatedPredOrFun.getName() + in[2];	    
		                  // else
		                	//   equivModel = in[0] + mutatedPredOrFun.getName() + in[1].replace(original, qtFormula) + mutatedPredOrFun.getName() + in[2];
		                   equivModel = insert[0];
		                   for(int i = 1; i < insert.length; i++)
		                	   equivModel += mutatedPredOrFun.getName() + insert[i].replace(original, qtFormula);
		                 //System.out.println("QOI:" + equivModel);
		                   break;
		                 case FACT:
		                 case ASSERT:
		                   Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
		                       .accept(new CloneVisitor(), null);
		                   equivModel = MutantEquivalenceChecker
		                       .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
		                   String in [] = equivModel.split(mutatedFactOrAssertion.getName());
		                   equivModel = in[0] + mutatedFactOrAssertion.getName() + in[1].replace(original, qtFormula) + mutatedFactOrAssertion.getName() + in[2];	    
		                
		                   break;
		                 default:
		                   throw new UnsupportedOptionException(
		                       QOI.class.getSimpleName() + " for expression is not supported in " + mi
		                           .getType());
		               }
				    if (AlloyUtil.isValidModel(equivModel)) {
				    	PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode()
			                       .accept(new CloneVisitor(), null);
				    	String in [] = mutant.split(mutatedPredOrFun.getName());
	                	mutant = in[0];
	                 	for(int i = 1; i < in.length; i++)
	                 		mutant += mutatedPredOrFun.getName() + in[i].replace(original, qtFormula);	
		               if(opt.checkEquiv()) {
		           		res.add(MutationData.of(mutatedNodePathAsString, mutant, MutantEquivalenceChecker
		           	            .checkEquivalenceAndGenerateTest(equivModel, mi.getNode(), opt)));
			           	}
			           	else {
			           		res.add(MutationData.of(mutatedNodePathAsString, mutant, 0));
			           	}
		             }
		    }
		    }
		    
		  return res;
	 }
}
