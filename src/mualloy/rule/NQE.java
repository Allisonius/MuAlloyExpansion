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
public class NQE {

  public static List<MutationData> mutate(QtFormula qtFormula, ModelUnit mu, Opt opt, MInfo mi) {
    List<MutationData> res = new ArrayList<>();
    if (mi.getType() == MInfo.MType.IGNORE) {
      return res;
    }
    
    
    //Handle is declared as all x : D | all y : D
    Node parent = qtFormula.getParent();
    while(!(parent instanceof Predicate)) {

    	if(parent instanceof QtFormula) {
    		
    		QtFormula parent_qt = (QtFormula) parent;

    		QtFormula.Quantifier orig_parent_op = parent_qt.getOp();
    		QtFormula.Quantifier orig_child_op = qtFormula.getOp();
    		
    		List<VarDecl> orig_child_vardecl = qtFormula.getVarDecls();
    		List<VarDecl> orig_parent_vardecl = parent_qt.getVarDecls();
    		
    		parent_qt.setOp(orig_child_op);
    		qtFormula.setOp(orig_parent_op);		
    		parent_qt.setVarDecls(orig_child_vardecl);
    		qtFormula.setVarDecls(orig_parent_vardecl);

    		String mutatedNodePathAsString = AlloyUtil.computeNodePathAsString(qtFormula, opt.getPSV());
    	      String mutant = mu.accept(opt.getPSV(), null);
    	      

    	      if (AlloyUtil.isValidModel(mutant)) {
    	        String equivModel;
    	        switch (mi.getType()) {
    	          case PRED:
    	          case FUN:
    	            PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode().accept(new CloneVisitor(), null);
    	            parent_qt.setOp(orig_parent_op);
    	    		qtFormula.setOp(orig_child_op);		
    	    		parent_qt.setVarDecls(orig_parent_vardecl);
    	    		qtFormula.setVarDecls(orig_child_vardecl);
    	            equivModel = MutantEquivalenceChecker
    	                .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
    	            
    	            break;
    	          case FACT:
    	          case ASSERT:
    	            Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
    	                .accept(new CloneVisitor(), null);
    	            parent_qt.setOp(orig_parent_op);
    	    		qtFormula.setOp(orig_child_op);		
    	    		parent_qt.setVarDecls(orig_parent_vardecl);
    	    		qtFormula.setVarDecls(orig_child_vardecl);
    	            equivModel = MutantEquivalenceChecker
    	                .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
    	            break;
    	          default:
    	            throw new UnsupportedOptionException(
    	                NQE.class.getSimpleName() + " for formula is not supported in " + mi.getType());
    	        }
    	    	if(opt.checkEquiv()) {
    	    		res.add(MutationData.of(mutatedNodePathAsString, mutant, MutantEquivalenceChecker
    	    	            .checkEquivalenceAndGenerateTest(equivModel, mi.getNode(), opt)));
    	    	}
    	    	else {
    	    		res.add(MutationData.of(mutatedNodePathAsString, mutant, 0));
    	    	}
    	    	
	    	      }
    	      else {
    	    	  parent_qt.setOp(orig_parent_op);
    	  			qtFormula.setOp(orig_child_op);		
    	  			parent_qt.setVarDecls(orig_parent_vardecl);
    	  			qtFormula.setVarDecls(orig_child_vardecl);
    	      }
    	      
    	      
	      	
    	      	
    	}
    	
	      parent = parent.getParent();

      	
    }
    
    //System.out.println("second : " + mu.accept(opt.getPSV(), null));

    return res;
  }
}
