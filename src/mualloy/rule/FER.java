package mualloy.rule;

import java.util.ArrayList;
import java.util.List;

import mualloy.util.MInfo;
import mualloy.util.MutantEquivalenceChecker;
import parser.ast.nodes.FieldDecl;
import parser.ast.nodes.FieldExpr;
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

public class FER {
	public static List<MutationData> mutate(FieldExpr fieldExpr, ModelUnit mu, Opt opt, MInfo mi) {
	    List<MutationData> res = new ArrayList<>();
	    if (mi.getType() == MInfo.MType.IGNORE) {
	      return res;
	    }
	    
	    String original = fieldExpr.getName();
	    for(SigDecl sig : mu.getSigDeclList()) {
	    	if(sig.getName().equals(fieldExpr.getSig())) { //if different sig, swap
	    		
	    		for(FieldDecl field : sig.getFieldList()) {
	    			if(!field.getNames().get(0).equals(original)) {
	    				fieldExpr.setName(field.getNames().get(0));
	    				
	    				String mutatedNodePathAsString = AlloyUtil.computeNodePathAsString(fieldExpr, opt.getPSV());
	    	    	      String mutant = mu.accept(opt.getPSV(), null);
	    	    	      	    	    	      
	    	    	      if (AlloyUtil.isValidModel(mutant)) {
	    	    		        String equivModel;
	    	    		        switch (mi.getType()) {
	    	    		          case PRED:
	    	    		          case FUN:
	    	    		            PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode().accept(new CloneVisitor(), null);
	    	    		            fieldExpr.setName(original);
	    	    		            equivModel = MutantEquivalenceChecker
	    	    		                .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
	    	    		            break;
	    	    		          case FACT:
	    	    		          case ASSERT:
	    	    		            Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
	    	    		                .accept(new CloneVisitor(), null);
	    	    		            fieldExpr.setName(original);
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
	    		}    		  
	    }
        fieldExpr.setName(original);
	    return res;
	  }

}
