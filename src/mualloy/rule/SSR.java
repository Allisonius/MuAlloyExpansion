package mualloy.rule;

import java.util.ArrayList;
import java.util.List;
import mualloy.util.MInfo;
import mualloy.util.MutantEquivalenceChecker;
import parser.ast.nodes.BinaryExpr;
import parser.ast.nodes.BinaryFormula;
import parser.ast.nodes.BinaryFormula.BinaryOp;
import parser.ast.nodes.BinaryFormula.BinaryOp.Group;
import parser.ast.nodes.ExprOrFormula;
import parser.ast.nodes.ModelUnit;
import parser.ast.nodes.Node;
import parser.ast.nodes.Paragraph;
import parser.ast.nodes.PredOrFun;
import parser.ast.nodes.UnaryExpr;
import parser.ast.nodes.UnaryFormula;
import parser.ast.nodes.UnaryFormula.UnaryOp;
import parser.ast.visitor.CloneVisitor;
import parser.etc.MutationData;
import parser.exception.UnsupportedOptionException;
import parser.opt.Opt;
import parser.util.AlloyUtil;

/**
 * Binary Operator Replacement.
 */
public class SSR {

  public static List<MutationData> mutate(BinaryFormula binaryFormula, ModelUnit mu, Opt opt,
      MInfo mi) {
    List<MutationData> res = new ArrayList<>();
    if (mi.getType() == MInfo.MType.IGNORE) {
      return res;
    }
    BinaryFormula.BinaryOp original = binaryFormula.getOp();
    BinaryFormula orig_formula = binaryFormula;
    //Node parent = binaryFormula.getParent();
    UnaryExpr parent = (UnaryExpr) binaryFormula.getParent();
    if(original == BinaryOp.IN || original == BinaryOp.NOT_IN) {
    	UnaryFormula unary = new UnaryFormula(binaryFormula.getParent());
    	BinaryExpr newBin = new BinaryExpr(unary);

    	if(original == BinaryOp.IN) {
	    	unary.setOp(UnaryOp.SOME);
	    	newBin.setOp(BinaryExpr.BinaryOp.INTERSECT);
	    	newBin.setLeft(binaryFormula.getLeft());
	    	newBin.setRight(binaryFormula.getRight());	    	
    	}
    	if(original == BinaryOp.NOT_IN) {
	    	unary.setOp(UnaryOp.NO);
	    	newBin.setOp(BinaryExpr.BinaryOp.INTERSECT);
	    	newBin.setLeft(binaryFormula.getLeft());
	    	newBin.setRight(binaryFormula.getRight());	    	
    	}
    	
    	unary.setSub(newBin);
    	parent.setSub(unary);
    	
    	String mutatedNodePathAsString = AlloyUtil
    	          .computeNodePathAsString(binaryFormula, opt.getPSV());
	      String mutant = mu.accept(opt.getPSV(), null);
	      
	      
	      if (AlloyUtil.isValidModel(mutant)) {
	        String equivModel;
	        switch (mi.getType()) {
	          case PRED:
	          case FUN:
	            PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode().accept(new CloneVisitor(), null);
	            parent.setSub(orig_formula);
	            equivModel = MutantEquivalenceChecker
	                .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
	           // System.out.println(equivModel);
	            break;
	          case FACT:
	          case ASSERT:
	            Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
	                .accept(new CloneVisitor(), null);
	            parent.setSub(orig_formula);
	            equivModel = MutantEquivalenceChecker
	                .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
	            break;
	          default:
	            throw new UnsupportedOptionException(
	                SSR.class.getSimpleName() + " for formula is not supported in " + mi.getType());
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
    	
    }
    parent.setSub(orig_formula);

   // System.out.println(mu.accept(opt.getPSV(), null));

    return res;
  }
}
