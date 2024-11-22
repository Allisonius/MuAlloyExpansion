package mualloy.rule;

import java.awt.datatransfer.SystemFlavorMap;
import java.util.ArrayList;
import java.util.List;
import mualloy.util.MInfo;
import mualloy.util.MutantEquivalenceChecker;
import parser.ast.nodes.BinaryExpr;
import parser.ast.nodes.BinaryFormula;
import parser.ast.nodes.BinaryFormula.BinaryOp;
import parser.ast.nodes.BinaryFormula.BinaryOp.Group;
import parser.ast.nodes.Body;
import parser.ast.nodes.ExprOrFormula;
import parser.ast.nodes.ListFormula;
import parser.ast.nodes.ModelUnit;
import parser.ast.nodes.Paragraph;
import parser.ast.nodes.PredOrFun;
import parser.ast.nodes.UnaryExpr;
import parser.ast.visitor.CloneVisitor;
import parser.etc.MutationData;
import parser.exception.UnsupportedOptionException;
import parser.opt.Opt;
import parser.util.AlloyUtil;

/**
 * Binary Operator Replacement.
 */
public class SDR {

 
  public static List<MutationData> mutate(ListFormula listFormula, ModelUnit mu, Opt opt,
      MInfo mi) {
    List<MutationData> res = new ArrayList<>();
    if (mi.getType() == MInfo.MType.IGNORE) {
      return res;
    }
    ListFormula original = listFormula;
    //System.out.println(listFormula.getParent().getClass());
    //System.out.println(listFormula.accept(opt.getPSV(), null));
    if(listFormula.getParent() instanceof Body) {
    Body parent =  (Body) listFormula.getParent();
        
    if(listFormula.getOp() == ListFormula.ListOp.OR) {
    	if(listFormula.getArguments().size() == 2) {
    		ExprOrFormula left = (listFormula.getArguments().get(0));
        	ExprOrFormula right = (listFormula.getArguments().get(1));
        	if(left instanceof UnaryExpr && right instanceof UnaryExpr) {
        		ExprOrFormula left2 =  ((UnaryExpr)listFormula.getArguments().get(0)).getSub();
            	ExprOrFormula right2 = ((UnaryExpr)listFormula.getArguments().get(1)).getSub();
            if(left2 instanceof BinaryFormula && right2 instanceof BinaryFormula) {	
        		BinaryFormula binLeft = (BinaryFormula) left2;
        		BinaryFormula binRight = (BinaryFormula) right2;
        		
        		if(binLeft.getOp() == BinaryFormula.BinaryOp.IN && binRight.getOp() == BinaryFormula.BinaryOp.IN) {
        			
        			//System.out.println(binLeft.accept(opt.getPSV(), null));
        			//System.out.println(binRight.accept(opt.getPSV(), null));
        			
        			BinaryFormula binFormula = new BinaryFormula(parent);
        			binFormula.setOp(BinaryFormula.BinaryOp.IMPLIES);
        			binFormula.setLeft(binLeft);
        			binRight.setOp(BinaryFormula.BinaryOp.NOT_IN);
        			binFormula.setRight(binRight);	
        			
        			parent.setBodyExpr(binFormula);
        			
        			String mutatedNodePathAsString = AlloyUtil
        			          .computeNodePathAsString(binFormula, opt.getPSV());
    			      String mutant = mu.accept(opt.getPSV(), null);
    			      
    			     // System.out.println(mutant);
    			      
    			      if (AlloyUtil.isValidModel(mutant)) {
    			        String equivModel;
    			        switch (mi.getType()) {
    			          case PRED:
    			          case FUN:
    			            PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode().accept(new CloneVisitor(), null);
    		    			binRight.setOp(BinaryFormula.BinaryOp.IN);
    		    			parent.setBodyExpr(original);
    			            equivModel = MutantEquivalenceChecker
    			                .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
    			            break;
    			          case FACT:
    			          case ASSERT:
    			            Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
    			                .accept(new CloneVisitor(), null);
    			            binRight.setOp(BinaryFormula.BinaryOp.IN);
    		    			parent.setBodyExpr(original);
    			            equivModel = MutantEquivalenceChecker
    			                .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
    			            break;
    			          default:
    			            throw new UnsupportedOptionException(
    			                SDR.class.getSimpleName() + " for formula is not supported in " + mi.getType());
    			        }
    			        if(opt.checkEquiv()) {
    			    		res.add(MutationData.of(mutatedNodePathAsString, mutant, MutantEquivalenceChecker
    			    	            .checkEquivalenceAndGenerateTest(equivModel, mi.getNode(), opt)));
    			    	}
    			    	else {
    			    		res.add(MutationData.of(mutatedNodePathAsString, mutant, 0));
    			    	}
    			      } else {
    			        //System.out.println(mutant);
    			        //   System.out.println(
    			        //   "Left Int: " + binaryFormula.getLeft().getType().is_int() + ", Right Int: "
    			        //    + binaryFormula.getRight().getType().is_int());
    			      }
    			      binRight.setOp(BinaryFormula.BinaryOp.IN);
    	      			parent.setBodyExpr(original);
        		}
        		 
        	}
          
    	}
        	
    }
    	
    }
  }
   // System.out.println("here: " + mu.accept(opt.getPSV(), null));

    
    return res;
  }
}
