package mualloy.rule;

import java.util.ArrayList;
import java.util.List;
import mualloy.util.MInfo;
import mualloy.util.MutantEquivalenceChecker;
import parser.ast.nodes.ExprOrFormula;
import parser.ast.nodes.ModelUnit;
import parser.ast.nodes.Paragraph;
import parser.ast.nodes.PredOrFun;
import parser.ast.nodes.QtFormula;
import parser.ast.nodes.UnaryExpr;
import parser.ast.nodes.VarDecl;
import parser.ast.visitor.CloneVisitor;
import parser.etc.MutationData;
import parser.exception.UnsupportedOptionException;
import parser.opt.Opt;
import parser.util.AlloyUtil;

/**
 * Quantifier Operator Replacement.
 */
public class QOD {

  public static List<MutationData> mutate(QtFormula qtFormula, ModelUnit mu, Opt opt, MInfo mi) {
    List<MutationData> res = new ArrayList<>();
    if (mi.getType() == MInfo.MType.IGNORE) {
      return res;
    }
   
    QtFormula orignal = qtFormula;
    UnaryExpr parent = (UnaryExpr) qtFormula.getParent();
    
    String qt = qtFormula.accept(opt.getPSV(), null);
    
    ExprOrFormula bodyExpr = qtFormula.getBody().getBodyExpr();
    String body = bodyExpr.accept(opt.getPSV(), null);
    
    ArrayList<VarDecl> vars = new ArrayList<VarDecl>();
    for(VarDecl varDecl : qtFormula.getVarDecls()) {
    	vars.add(0,varDecl);
    }
    

    for(VarDecl varDecl : vars) {
    	String type = varDecl.getExpr().accept(opt.getPSV(), null);
    			//getType().toString();
    	//type = type.replace("{", "");
		type = type.replace("one ", "");
		type = type.replace("((", "");
		type = type.replace("))", "");
		//type = type.replace("}", "");	
		
		//System.out.println(varDecl.getExpr().accept(opt.getPSV(), null));
		
		ArrayList<String> dividers = new ArrayList<String>();
		dividers.add(" "); dividers.add("\\."); dividers.add("\\("); dividers.add("\\)"); dividers.add("\\|"); 
		dividers.add("\\{"); dividers.add("\\}"); dividers.add("\\&"); dividers.add("\\+"); dividers.add("\\-"); 
		dividers.add("\\<"); dividers.add("\\>"); dividers.add("\\["); dividers.add("\\]"); dividers.add("\\'"); 
		dividers.add("\\,"); dividers.add("\\#"); dividers.add("\\~"); dividers.add("\\^"); dividers.add("\\*");
		dividers.add("\\="); dividers.add("\\<"); dividers.add("\\>"); dividers.add("\\;"); dividers.add("\\:");
		
    	for(int i = 0; i < varDecl.getVariables().size(); i++) {
    		String var = varDecl.getVariables().get(i).accept(opt.getPSV(), null);
    		
    		for(String div1 : dividers) {
    			for(String div2 : dividers) {
    	    		body = body.replaceAll(div1 + var + div2, div1 + "(" + type + ")" + div2);
    			}
    		}
    	}
    			
    	if(body.contains("one File.File.link"))
    		body = body.replace("one File.File.link", "one File.link");
    }
    
      String mutatedNodePathAsString = AlloyUtil.computeNodePathAsString(qtFormula, opt.getPSV());
      String mutant = mu.accept(opt.getPSV(), null);
        String equivModel;
        switch (mi.getType()) {
          case PRED:
          case FUN:
            PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode().accept(new CloneVisitor(), null);
            equivModel = MutantEquivalenceChecker
                .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
            
            String insert [] = equivModel.split(mutatedPredOrFun.getName());
            equivModel = insert[0];
            for(int i = 1; i < insert.length; i++)
         	   equivModel += mutatedPredOrFun.getName() + insert[i].replace(qt, body);
           // equivModel = in[0] + mutatedPredOrFun.getName() + in[1].replace(qt, body) + mutatedPredOrFun.getName() + in[2];	    
          // System.out.println(equivModel);
            break;
          case FACT:
          case ASSERT:
            Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
                .accept(new CloneVisitor(), null);
            equivModel = MutantEquivalenceChecker
                .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
            
            String in [] = equivModel.split(mutatedFactOrAssertion.getName());
            equivModel = in[0] + mutatedFactOrAssertion.getName() + in[1].replace(qt, body) + mutatedFactOrAssertion.getName() + in[2];	    
           
            break;
          default:
            throw new UnsupportedOptionException(
                QOD.class.getSimpleName() + " for formula is not supported in " + mi.getType());
        }
        if (AlloyUtil.isValidModel(equivModel)  ) {

    	if(opt.checkEquiv()) {
    		//System.out.println(equivModel);
    		PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode()
                    .accept(new CloneVisitor(), null);
	    	String in [] = mutant.split(mutatedPredOrFun.getName());
     	mutant = in[0];
     	for(int i = 1; i < in.length; i++)
     		mutant += mutatedPredOrFun.getName() + in[i].replace(qt, body);	    
    		res.add(MutationData.of(mutatedNodePathAsString, mutant, MutantEquivalenceChecker
    	            .checkEquivalenceAndGenerateTest(equivModel, mi.getNode(), opt)));
    	}
    	else {
    		res.add(MutationData.of(mutatedNodePathAsString, mutant, 0));
    	}
        
      }
    
    return res;
  }
}
