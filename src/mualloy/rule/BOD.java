package mualloy.rule;

import static parser.util.AlloyUtil.getFirstNonNOOPChild;

import java.util.ArrayList;
import java.util.List;

import mualloy.util.MInfo;
import mualloy.util.MutantEquivalenceChecker;
import parser.ast.nodes.BinaryExpr;
import parser.ast.nodes.BinaryFormula;
import parser.ast.nodes.ExprOrFormula;
import parser.ast.nodes.ModelUnit;
import parser.ast.nodes.Paragraph;
import parser.ast.nodes.PredOrFun;
import parser.ast.nodes.UnaryExpr;
import parser.ast.nodes.UnaryFormula;
import parser.ast.visitor.CloneVisitor;
import parser.etc.MutationData;
import parser.exception.UnsupportedOptionException;
import parser.opt.Opt;
import parser.util.AlloyUtil;

/**
 * Unary Operator Deletion.
 */
public class BOD {

  public static List<MutationData> mutate(BinaryExpr binaryExpr, ModelUnit mu, Opt opt, MInfo mi) {
    if (mi.getType() == MInfo.MType.IGNORE) {
      return null;
    }
    List<MutationData> res = new ArrayList<>();
	 
	UnaryExpr parent = (UnaryExpr) binaryExpr.getParent();
    ExprOrFormula sub = binaryExpr.getLeft();
    parent.setSub(sub);
    sub.setParent(parent);
	
	String mutatedNodePathAsString = AlloyUtil.computeNodePathAsString(binaryExpr.getLeft(), opt.getPSV());
    String mutant = mu.accept(opt.getPSV(), null);
    
      if (AlloyUtil.isValidModel(mutant)) {
        String equivModel;
        switch (mi.getType()) {
          case PRED:
          case FUN:
            PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode().accept(new CloneVisitor(), null);
            parent.setSub(binaryExpr);
            sub.setParent(binaryExpr);
            equivModel = MutantEquivalenceChecker
                    .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
            break;
          case FACT:
          case ASSERT:
            Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
                .accept(new CloneVisitor(), null);
            parent.setSub(binaryExpr);
            sub.setParent(binaryExpr);
            equivModel = MutantEquivalenceChecker
                    .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
            break;
          default:
        	  System.out.println(mutatedNodePathAsString);
            throw new UnsupportedOptionException(
                BOD.class.getSimpleName() + " for expression is not supported in " + mi.getType());
        }
        	if(opt.checkEquiv()) {
        		res.add(MutationData.of(mutatedNodePathAsString, mutant, MutantEquivalenceChecker
        	            .checkEquivalenceAndGenerateTest(equivModel, mi.getNode(), opt)));
        	}
        	else {
        		res.add(MutationData.of(mutatedNodePathAsString, mutant, 0));
        	}
        
        	
      }
      
      parent = (UnaryExpr) binaryExpr.getParent();
      // Note that sub could be NOOP UnaryExpr.
      sub = binaryExpr.getRight();
      
      parent.setSub(sub);
      sub.setParent(parent);
      
  	  mutatedNodePathAsString = AlloyUtil.computeNodePathAsString(binaryExpr.getRight(), opt.getPSV());
      mutant = mu.accept(opt.getPSV(), null);

        if (AlloyUtil.isValidModel(mutant)) {
          String equivModel;
          switch (mi.getType()) {
            case PRED:
            case FUN:
              PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode().accept(new CloneVisitor(), null);
              parent.setSub(binaryExpr);
              sub.setParent(binaryExpr);
              equivModel = MutantEquivalenceChecker
                      .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
              break;
            case FACT:
            case ASSERT:
              Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
                  .accept(new CloneVisitor(), null);
              parent.setSub(binaryExpr);
              sub.setParent(binaryExpr);

              equivModel = MutantEquivalenceChecker
                      .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
              break;
            default:
              throw new UnsupportedOptionException(
                  UOD.class.getSimpleName() + " for expression is not supported in " + mi.getType());
          }
          	if(opt.checkEquiv()) {
          		res.add(MutationData.of(mutatedNodePathAsString, mutant, MutantEquivalenceChecker
          	            .checkEquivalenceAndGenerateTest(equivModel, mi.getNode(), opt)));
          	}
          	else {
          		res.add(MutationData.of(mutatedNodePathAsString, mutant, 0));
          	}
          
        }
        parent.setSub(binaryExpr);
        sub.setParent(binaryExpr);

    return res;
  }
  public static List<MutationData> mutate(BinaryFormula binaryFormula, ModelUnit mu, Opt opt, MInfo mi) {
	    if (mi.getType() == MInfo.MType.IGNORE) {
	      return null;
	    }
	    List<MutationData> res = new ArrayList<>();

	    UnaryExpr parent = (UnaryExpr) binaryFormula.getParent();
	    ExprOrFormula sub = binaryFormula.getLeft();
	    parent.setSub(sub);
	    sub.setParent(parent);
	    
		String mutatedNodePathAsString = AlloyUtil.computeNodePathAsString(binaryFormula.getLeft(), opt.getPSV());
	    String mutant = mu.accept(opt.getPSV(), null);

	      if (AlloyUtil.isValidModel(mutant)) {
	        String equivModel;
	        switch (mi.getType()) {
	          case PRED:
	          case FUN:
	            PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode().accept(new CloneVisitor(), null);
	              parent.setSub(binaryFormula);
	              sub.setParent(binaryFormula);
	            equivModel = MutantEquivalenceChecker
	                    .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
	            break;
	          case FACT:
	          case ASSERT:
	            Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
	                .accept(new CloneVisitor(), null);
	            parent.setSub(binaryFormula);
	              sub.setParent(binaryFormula);
	            equivModel = MutantEquivalenceChecker
	                    .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
	            break;
	          default:
	            throw new UnsupportedOptionException(
	                UOD.class.getSimpleName() + " for expression is not supported in " + mi.getType());
	        }
	        	if(opt.checkEquiv()) {
	        		res.add(MutationData.of(mutatedNodePathAsString, mutant, MutantEquivalenceChecker
	        	            .checkEquivalenceAndGenerateTest(equivModel, mi.getNode(), opt)));
	        	}
	        	else {
	        		res.add(MutationData.of(mutatedNodePathAsString, mutant, 0));
	        	}
	        
	      }
	      
	      parent = (UnaryExpr) binaryFormula.getParent();
	      sub = binaryFormula.getRight();
	      parent.setSub(sub);
	      sub.setParent(parent);
	      
	  	  mutatedNodePathAsString = AlloyUtil.computeNodePathAsString(binaryFormula.getRight(), opt.getPSV());
	      mutant = mu.accept(opt.getPSV(), null);

	      if (AlloyUtil.isValidModel(mutant)) {
	          String equivModel;
	          switch (mi.getType()) {
	            case PRED:
	            case FUN:
	              PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode().accept(new CloneVisitor(), null);
	              parent.setSub(binaryFormula);
	              sub.setParent(binaryFormula);
	              equivModel = MutantEquivalenceChecker
	                      .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
	              break;
	            case FACT:
	            case ASSERT:
	              Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
	                  .accept(new CloneVisitor(), null);
	              parent.setSub(binaryFormula);
	              sub.setParent(binaryFormula);
	              equivModel = MutantEquivalenceChecker
	                      .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
	              break;
	            default:
	              throw new UnsupportedOptionException(
	                  UOD.class.getSimpleName() + " for expression is not supported in " + mi.getType());
	          }
	          	if(opt.checkEquiv()) {
	          		res.add(MutationData.of(mutatedNodePathAsString, mutant, MutantEquivalenceChecker
	          	            .checkEquivalenceAndGenerateTest(equivModel, mi.getNode(), opt)));
	          	}
	          	else {
	          		res.add(MutationData.of(mutatedNodePathAsString, mutant, 0));
	          	}
	          
	        }

	      parent.setSub(binaryFormula);
	      sub.setParent(binaryFormula);
	        
	    return res;
	  }
}
