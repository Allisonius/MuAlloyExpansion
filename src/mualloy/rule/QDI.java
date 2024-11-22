package mualloy.rule;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import edu.mit.csail.sdg.alloy4.Err;
import edu.mit.csail.sdg.ast.Expr;
import mualloy.util.MInfo;
import mualloy.util.MutantEquivalenceChecker;
import parser.ast.nodes.ExprOrFormula;
import parser.ast.nodes.ModelUnit;
import parser.ast.nodes.Paragraph;
import parser.ast.nodes.PredOrFun;
import parser.ast.nodes.QtFormula;
import parser.ast.nodes.SigDecl;
import parser.ast.nodes.SigExpr;
import parser.ast.nodes.VarDecl;
import parser.ast.visitor.CloneVisitor;
import parser.etc.MutationData;
import parser.exception.UnsupportedOptionException;
import parser.opt.Opt;
import parser.util.AlloyUtil;

/**
 * Quantifier Operator Replacement.
 */
public class QDI {

  public static List<MutationData> mutate(QtFormula qtFormula, ModelUnit mu, Opt opt, MInfo mi) {
    List<MutationData> res = new ArrayList<>();
    if (mi.getType() == MInfo.MType.IGNORE) {
      return res;
    }
    
    for(SigDecl sig : mu.getSigDeclList()) {
    	
    }
    
//	List<VarDecl> original = qtFormula.getVarDecls();
	
	int v = 0;
	for(VarDecl varDecl : qtFormula.getVarDecls()) {
		
		ExprOrFormula original = varDecl.getExpr();
		
		String type = varDecl.getExpr().getType().toString();
		type = type.replace("{this/", "");
		type = type.replace("}", "");				
		
		ArrayList<String> extensions = new ArrayList<String>();
		
		//get extension signatures, if exist
		for(SigDecl sig : mu.getSigDeclList()) {
			if(!sig.isTopLevel()) {
				if(sig.getParentName().equals(type)) {
					extensions.add(sig.getName());
				}				
			}
		}
		
		//get parent, if exist
		for(SigDecl sig : mu.getSigDeclList()) {
			if(sig.getName().equals(type)) {
				if(!sig.isTopLevel())
					extensions.add(sig.getParentName());
			}
		}
		
		//insertions to domain
		ArrayList<String> change = new ArrayList<String>();
		change.add(" - ");
		change.add(" + ");
		change.add(" & ");
		
		for(String ext : extensions) {
			try {
				for(String c : change ) {
				Expr expr = mu.getModule().parseOneExpressionFromString(type + c + ext);
				
				varDecl.setExpr(ExprOrFormula.buildExpression(varDecl.getParent(),expr));
				
				//System.out.println(type + c + ext);
				
				String mutatedNodePathAsString = AlloyUtil.computeNodePathAsString(qtFormula, opt.getPSV());
			      String mutant = mu.accept(opt.getPSV(), null);
			      
			      //System.out.println(mutant);
			      
			      if (AlloyUtil.isValidModel(mutant)) {
			        String equivModel;
			        switch (mi.getType()) {
			          case PRED:
			          case FUN:
			            PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode().accept(new CloneVisitor(), null);
			            varDecl.setExpr(original);
			            equivModel = MutantEquivalenceChecker
			                .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
			            break;
			          case FACT:
			          case ASSERT:
			            Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
			                .accept(new CloneVisitor(), null);
			            varDecl.setExpr(original);
			            equivModel = MutantEquivalenceChecker
			                .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
			            break;
			          default:
			            throw new UnsupportedOptionException(
			                QDI.class.getSimpleName() + " for formula is not supported in " + mi.getType());
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
			} catch (Exception e) {
				System.out.println(e);
			}
		}
		varDecl.setExpr(original);
	}

	//System.out.println(mu.accept(opt.getPSV(), null));
    return res;
  }
}
