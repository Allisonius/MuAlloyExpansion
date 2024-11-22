package mualloy.rule;

import java.util.ArrayList;
import java.util.List;

import mualloy.util.MInfo;
import mualloy.util.MutantEquivalenceChecker;
import parser.ast.nodes.FieldDecl;
import parser.ast.nodes.ModelUnit;
import parser.ast.nodes.Paragraph;
import parser.ast.nodes.PredOrFun;
import parser.ast.nodes.SigDecl;
import parser.ast.nodes.SigExpr;
import parser.ast.nodes.UnaryExpr;
import parser.ast.nodes.VarDecl;
import parser.ast.visitor.CloneVisitor;
import parser.etc.MutationData;
import parser.exception.UnsupportedOptionException;
import parser.opt.Opt;
import parser.util.AlloyUtil;

public class SER {
	public static List<MutationData> mutate(SigExpr sigExpr, ModelUnit mu, Opt opt, MInfo mi) {
	    List<MutationData> res = new ArrayList<>();
	    if (mi.getType() == MInfo.MType.IGNORE) {
	      return res;
	    }
	    
	    String original = sigExpr.getName();
	    for(SigDecl sig : mu.getSigDeclList()) {
	    	if(!sig.getName().equals(sigExpr.getName())) { //if different sig, swap
	    		sigExpr.setName(sig.getName());
	    		
    		  String mutatedNodePathAsString = AlloyUtil.computeNodePathAsString(sigExpr, opt.getPSV());
    	      String mutant = mu.accept(opt.getPSV(), null);

    	      if (AlloyUtil.isValidModel(mutant)) {
    		        String equivModel;
    		        switch (mi.getType()) {
    		          case PRED:
    		          case FUN:
    		            PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode().accept(new CloneVisitor(), null);
    		            sigExpr.setName(original);
    		            equivModel = MutantEquivalenceChecker
    		                .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
    		            break;
    		          case FACT:
    		          case ASSERT:
    		            Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
    		                .accept(new CloneVisitor(), null);
    		            sigExpr.setName(original);
    		            equivModel = MutantEquivalenceChecker
    		                .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
    		            break;
    		          default:
    		            throw new UnsupportedOptionException(
    		                SER.class.getSimpleName() + " for expression is not supported in " + mi.getType());
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
	    }

        sigExpr.setName(original);
	    return res;
	  }

}
