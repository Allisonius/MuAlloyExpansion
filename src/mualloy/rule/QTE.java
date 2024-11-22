package mualloy.rule;

import java.util.ArrayList;
import java.util.List;
import mualloy.util.MInfo;
import mualloy.util.MutantEquivalenceChecker;
import parser.ast.nodes.Body;
import parser.ast.nodes.ExprOrFormula;
import parser.ast.nodes.ModelUnit;
import parser.ast.nodes.Paragraph;
import parser.ast.nodes.PredOrFun;
import parser.ast.nodes.QtFormula;
import parser.ast.nodes.UnaryExpr;
import parser.ast.nodes.UnaryFormula;
import parser.ast.visitor.CloneVisitor;
import parser.etc.MutationData;
import parser.exception.UnsupportedOptionException;
import parser.opt.Opt;
import parser.util.AlloyUtil;

/**
 * Quantifier Operator Replacement.
 */
public class QTE {
	
	public static List<MutationData> mutate(UnaryFormula unaryFormula, ModelUnit mu, Opt opt, MInfo mi) {
	    List<MutationData> res = new ArrayList<>();
	    if (mi.getType() == MInfo.MType.IGNORE) {
	      return res;
	    }
	    
	    if(unaryFormula.getOp().getGroup() == UnaryFormula.UnaryOp.Group.TEMPORAL_OPERATOR && unaryFormula.getSub() instanceof UnaryExpr) {
	    	    
	    	UnaryFormula original = unaryFormula;
	    	UnaryExpr parent = (UnaryExpr) unaryFormula.getParent();
	    
	    	//should be in wrapper
	    	//System.out.println(unaryFormula.accept(opt.getPSV(), null));
	    	
	    	UnaryExpr wrapper = (UnaryExpr) unaryFormula.getSub();
	    	ExprOrFormula sub = wrapper.getSub();
	        
	    	if(sub instanceof QtFormula) {
	    		
	    		QtFormula qtFormula = (QtFormula) sub;
	    		
	    		QtFormula newQtFormula = new QtFormula(parent);
	    		newQtFormula.setOp(qtFormula.getOp());
	    		newQtFormula.setVarDecls(qtFormula.getVarDecls());
	    		newQtFormula.setType(qtFormula.getType());
	    		newQtFormula.setBody(new Body(newQtFormula));
	    		
	    		UnaryFormula moveTemporal = new UnaryFormula(newQtFormula.getBody());
	    		moveTemporal.setOp(unaryFormula.getOp());
	    		moveTemporal.setSub(qtFormula.getBody().getBodyExpr());
	    		
	    		newQtFormula.getBody().setBodyExpr(moveTemporal);
	    		
	    	
	    		parent.setSub(newQtFormula);
	    		
	    		String mutatedNodePathAsString = AlloyUtil.computeNodePathAsString(parent, opt.getPSV());
	    	      String mutant = mu.accept(opt.getPSV(), null);
	    	      
	    	      //System.out.println(mutant);
	    	      
	    	      if (AlloyUtil.isValidModel(mutant)) {
	    	        String equivModel;
	    	        switch (mi.getType()) {
	    	          case PRED:
	    	          case FUN:
	    	            PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode().accept(new CloneVisitor(), null);
	    	            parent.setSub(original);
	    	            equivModel = MutantEquivalenceChecker
	    	                .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
	    	            break;
	    	          case FACT:
	    	          case ASSERT:
	    	            Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
	    	                .accept(new CloneVisitor(), null);
	    	            parent.setSub(original);
	    	            equivModel = MutantEquivalenceChecker
	    	                .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
	    	            break;
	    	          default:
	    	            throw new UnsupportedOptionException(
	    	                QTE.class.getSimpleName() + " for formula is not supported in " + mi.getType());
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
	        parent.setSub(original);

	    }

	//System.out.println("here: " + mu.accept(opt.getPSV(), null));
	    return res;
	  }

  public static List<MutationData> mutate(QtFormula qtFormula, ModelUnit mu, Opt opt, MInfo mi) {
    List<MutationData> res = new ArrayList<>();
    if (mi.getType() == MInfo.MType.IGNORE) {
      return res;
    }
    
    QtFormula original = qtFormula;
    Body original_body = qtFormula.getBody();

    UnaryExpr parent = (UnaryExpr) qtFormula.getParent();
    
    //should be in wrapper
    if(qtFormula.getBody().getBodyExpr() instanceof UnaryExpr) {
    UnaryExpr wrapper = (UnaryExpr) qtFormula.getBody().getBodyExpr();
    ExprOrFormula sub = wrapper.getSub();
        
    if(sub instanceof UnaryFormula) {
    	
    	UnaryFormula unaryFormula = (UnaryFormula) sub;
    	if(unaryFormula.getOp().getGroup() == UnaryFormula.UnaryOp.Group.TEMPORAL_OPERATOR) {
    		
    		UnaryFormula moveTemporal = new UnaryFormula(parent);
    		moveTemporal.setOp(unaryFormula.getOp());
    		
    		QtFormula newQtFormula = new QtFormula(moveTemporal);
    		newQtFormula.setOp(qtFormula.getOp());
    		newQtFormula.setVarDecls(qtFormula.getVarDecls());
    		newQtFormula.setType(qtFormula.getType());
    		newQtFormula.setBody(new Body(newQtFormula));
    		newQtFormula.getBody().setBodyExpr(unaryFormula.getSub());
    		
    		moveTemporal.setSub(newQtFormula);
    		
    		parent.setSub(moveTemporal);
    		
    		String mutatedNodePathAsString = AlloyUtil.computeNodePathAsString(parent, opt.getPSV());
    	      String mutant = mu.accept(opt.getPSV(), null);
    	      
    	      //System.out.println(mutant);
    	      
    	      if (AlloyUtil.isValidModel(mutant)) {
    	        String equivModel;
    	        switch (mi.getType()) {
    	          case PRED:
    	          case FUN:
    	            PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode().accept(new CloneVisitor(), null);
    	            parent.setSub(original);
    	            equivModel = MutantEquivalenceChecker
    	                .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
    	            break;
    	          case FACT:
    	          case ASSERT:
    	            Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
    	                .accept(new CloneVisitor(), null);
    	            parent.setSub(original);
    	            equivModel = MutantEquivalenceChecker
    	                .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
    	            break;
    	          default:
    	            throw new UnsupportedOptionException(
    	                QTE.class.getSimpleName() + " for formula is not supported in " + mi.getType());
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
    parent.setSub(original);

    //System.out.println("here: " + mu.accept(opt.getPSV(), null));
    return res;
  }
}
