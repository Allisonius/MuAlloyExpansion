package mualloy.rule;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import edu.mit.csail.sdg.alloy4.Err;
import edu.mit.csail.sdg.ast.Expr;
import mualloy.util.MInfo;
import mualloy.util.MutantEquivalenceChecker;
import parser.ast.nodes.Body;
import parser.ast.nodes.ExprOrFormula;
import parser.ast.nodes.ModelUnit;
import parser.ast.nodes.Node;
import parser.ast.nodes.Paragraph;
import parser.ast.nodes.PredOrFun;
import parser.ast.nodes.Predicate;
import parser.ast.nodes.QtFormula;
import parser.ast.nodes.VarDecl;
import parser.ast.visitor.CloneVisitor;
import parser.etc.MutationData;
import parser.exception.UnsupportedOptionException;
import parser.opt.Opt;
import parser.util.AlloyUtil;

/**
 * Quantifier Operator Replacement.
 */
public class NQDI {

  public static List<MutationData> mutate(QtFormula qtFormula, ModelUnit mu, Opt opt, MInfo mi) {
    List<MutationData> res = new ArrayList<>();
    if (mi.getType() == MInfo.MType.IGNORE) {
      return res;
    }
    
    ArrayList<Boolean> original = new ArrayList<Boolean>();
    for(VarDecl varDecl : qtFormula.getVarDecls()) {
    	original.add(varDecl.isDisjoint());
    	varDecl.setDisjoint(true);
    }
    
    //handle if declared as all x,y,z : D
    if(qtFormula.getVarDecls().get(0).getNames().size() > 1) {        	
		  String mutatedNodePathAsString = AlloyUtil.computeNodePathAsString(qtFormula, opt.getPSV());
	      String mutant = mu.accept(opt.getPSV(), null);
	      
	      if (AlloyUtil.isValidModel(mutant)) {
	        String equivModel;
	        switch (mi.getType()) {
	          case PRED:
	          case FUN:
	            PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode().accept(new CloneVisitor(), null);
	            int i = 0;
	            for(VarDecl varDecl : qtFormula.getVarDecls()) {
	            	varDecl.setDisjoint(original.get(i));
	            	i++;
	            }
	            equivModel = MutantEquivalenceChecker
	                .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
	            break;
	          case FACT:
	          case ASSERT:
	            Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
	                .accept(new CloneVisitor(), null);
	            i = 0;
	            for(VarDecl varDecl : qtFormula.getVarDecls()) {
	            	varDecl.setDisjoint(original.get(i));
	            	i++;
	            }
	            equivModel = MutantEquivalenceChecker
	                .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
	            break;
	          default:
	            throw new UnsupportedOptionException(
	                NQDI.class.getSimpleName() + " for formula is not supported in " + mi.getType());
	        }
	    	if(opt.checkEquiv()) {
	    		res.add(MutationData.of(mutatedNodePathAsString, mutant, MutantEquivalenceChecker
	    	            .checkEquivalenceAndGenerateTest(equivModel, mi.getNode(), opt)));
	    	}
	    	else {
	    		res.add(MutationData.of(mutatedNodePathAsString, mutant, 0));
	    	}
	        
	      }
        
        
        
    }
    
    int i = 0;
    for(VarDecl varDecl : qtFormula.getVarDecls()) {
    	varDecl.setDisjoint(original.get(i));
    	i++;
    }
    
    ExprOrFormula original_body = qtFormula;

    
    //Handle is declared as all x : D | all y : D
    Node parent = qtFormula.getParent();
    while(!(parent instanceof Predicate)) {
    	if(parent instanceof QtFormula) {
    		
    		QtFormula parent_qt = (QtFormula) parent;

    		String disjoint = "{" + qtFormula.getVarDecls().get(0).getNames().get(0);
    		disjoint += " != ";
    		disjoint += parent_qt.getVarDecls().get(0).getNames().get(0);
    		disjoint += " =>  ";
    		disjoint +=  qtFormula.getBody().accept(opt.getPSV(), null);
    		disjoint += "}";
    		
    		String replace = qtFormula.getBody().accept(opt.getPSV(), null);

			try {
	    		String mutatedNodePathAsString = AlloyUtil.computeNodePathAsString(qtFormula, opt.getPSV());
	    	      String mutant = mu.accept(opt.getPSV(), null);
	    	      mutant = mutant.replace(replace, disjoint);
	
	    	      if (AlloyUtil.isValidModel(mutant)) {
	    	        String equivModel;
	    	        switch (mi.getType()) {
	    	          case PRED:
	    	          case FUN:
	    	            PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode().accept(new CloneVisitor(), null);
	    	            equivModel = MutantEquivalenceChecker
	    	                .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
	    	            String insert [] = equivModel.split(mutatedPredOrFun.getName());
	    	            equivModel = insert[0];
	                    for(int j = 1; j < insert.length; j++)
	                 	   equivModel += mutatedPredOrFun.getName() + insert[j].replace(replace, disjoint);
	    	            //equivModel = insert[0] + mutatedPredOrFun.getName() + insert[1].replace(replace, disjoint) + mutatedPredOrFun.getName() + insert[2];
	    	            break;
	    	          case FACT:
	    	          case ASSERT:
	    	            Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
	    	                .accept(new CloneVisitor(), null);
	    	            equivModel = MutantEquivalenceChecker
		    	                .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
	    	            
	    	            String in [] = equivModel.split(mutatedFactOrAssertion.getName());
	    	            equivModel = in[0] + mutatedFactOrAssertion.getName() + in[1].replace(replace, disjoint) + mutatedFactOrAssertion.getName() + in[2];	    
	    	           
	    	            break;
	    	          default:
	    	            throw new UnsupportedOptionException(
	    	                NQDI.class.getSimpleName() + " for formula is not supported in " + mi.getType());
	    	        }
	    	    	if(opt.checkEquiv()) {
	    	    		PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode()
			                       .accept(new CloneVisitor(), null);
				    	String in [] = mutant.split(mutatedPredOrFun.getName());	
	                	mutant = in[0];
	                 	for(int j = 1; j < in.length; j++)
	                 		mutant += mutatedPredOrFun.getName() + in[j].replace(replace, disjoint);	
	    	    		res.add(MutationData.of(mutatedNodePathAsString, mutant, MutantEquivalenceChecker
	    	    	            .checkEquivalenceAndGenerateTest(equivModel, mi.getNode(), opt)));
	    	    	}
	    	    	else {
	    	    		res.add(MutationData.of(mutatedNodePathAsString, mutant, 0));
	    	    	}
	    	        
	    	      }
	      	
	    		
	    		
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	}
      	parent = parent.getParent();

    }
    
    //System.out.println("second : " + mu.accept(opt.getPSV(), null));

    return res;
  }
}
