package mualloy.rule;

import edu.mit.csail.sdg.ast.Type;
import java.util.ArrayList;
import java.util.List;
import mualloy.util.MInfo;
import mualloy.util.MutantEquivalenceChecker;
import parser.ast.nodes.BinaryExpr;
import parser.ast.nodes.BinaryFormula;
import parser.ast.nodes.ExprOrFormula;
import parser.ast.nodes.FieldExpr;
import parser.ast.nodes.ITEFormula;
import parser.ast.nodes.ListFormula;
import parser.ast.nodes.ModelUnit;
import parser.ast.nodes.Node;
import parser.ast.nodes.Paragraph;
import parser.ast.nodes.PredOrFun;
import parser.ast.nodes.QtFormula;
import parser.ast.nodes.SigExpr;
import parser.ast.nodes.UnaryExpr;
import parser.ast.nodes.UnaryFormula;
import parser.ast.visitor.CloneVisitor;
import parser.etc.MutationData;
import parser.exception.UnsupportedOptionException;
import parser.opt.Opt;
import parser.util.AlloyUtil;

/**
 * Unary Operator Insertion.
 */
public class UOI {

  /**
   * Insert * (reflexive transitive closure), ^ (transitive closure) and ~ (transpose)
   */
  public static List<MutationData> mutate(ExprOrFormula exprOrFormula, ModelUnit mu, Opt opt,
      MInfo mi) {
    List<MutationData> res = new ArrayList<>();
    if (mi.getType() == MInfo.MType.IGNORE) {
      return res;
    }
    // Ignore UnaryExpr with op NOOP
    if (exprOrFormula instanceof UnaryExpr
        && ((UnaryExpr) exprOrFormula).getOp() == UnaryExpr.UnaryOp.NOOP) {
      return res;
    }
    if (exprOrFormula instanceof BinaryExpr || exprOrFormula instanceof UnaryExpr || 
    		exprOrFormula instanceof SigExpr || exprOrFormula instanceof FieldExpr) {
    	ExprOrFormula parent = (ExprOrFormula) exprOrFormula.getParent();

    	for(UnaryFormula.UnaryOp unaryOp : UnaryFormula.UnaryOp.values()) {
    		if(unaryOp.getGroup() != UnaryFormula.UnaryOp.Group.QUANTIFIED_OPERATION) {
    			continue;
    		}
    		
        	UnaryFormula wrapper = new UnaryFormula(exprOrFormula.getParent(), exprOrFormula.getType(), exprOrFormula, unaryOp);
        	parent.setSub(wrapper);
        	
        	String mutatedNodePathAsString = AlloyUtil.computeNodePathAsString(wrapper, opt.getPSV());
            String mutant = mu.accept(opt.getPSV(), null);
            
            if (AlloyUtil.isValidModel(mutant)) {
               String equivModel;
               switch (mi.getType()) {
               case FIELD:
             	  //Ignore field type declarations in signature paragraphs
             	  return res;
                 case PRED:
                 case FUN:
                   PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode()
                       .accept(new CloneVisitor(), null);
                   parent.setSub(exprOrFormula);
                   equivModel = MutantEquivalenceChecker
                       .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
                   break;
                 case FACT:
                 case ASSERT:
                   Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
                       .accept(new CloneVisitor(), null);
                   parent.setSub(exprOrFormula);
                   equivModel = MutantEquivalenceChecker
                       .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());                 
                   break;
                 default:
                   throw new UnsupportedOptionException(
                       UOI.class.getSimpleName() + " for expression is not supported in " + mi
                           .getType());
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
    	parent.setSub(exprOrFormula);
    }
    if (AlloyUtil.isHomogeneous(exprOrFormula.getType())) {
      UnaryExpr parent = (UnaryExpr) exprOrFormula.getParent();
      for (UnaryExpr.UnaryOp unaryOp : UnaryExpr.UnaryOp.values()) {
        if (unaryOp.getGroup() != UnaryExpr.UnaryOp.Group.CLOSURE
            && unaryOp.getGroup() != UnaryExpr.UnaryOp.Group.TRANSPOSE) {
           continue;
        }
       
        if (exprOrFormula instanceof UnaryExpr && unaryOp == ((UnaryExpr) exprOrFormula).getOp()) {
          continue;
        }
        
        Type type = exprOrFormula.getType();
        if (unaryOp == UnaryExpr.UnaryOp.TRANSPOSE) {
          type = type.transpose();
        }
        UnaryExpr wrapper = new UnaryExpr(parent, type, exprOrFormula, unaryOp);
        parent.setSub(wrapper);
        String mutatedNodePathAsString = AlloyUtil.computeNodePathAsString(wrapper, opt.getPSV());
        String mutant = mu.accept(opt.getPSV(), null);
       // System.out.println(mutant);
        if (AlloyUtil.isValidModel(mutant)) {
          String equivModel;
          switch (mi.getType()) {
            case PRED:
            case FUN:
              PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode()
                  .accept(new CloneVisitor(), null);
              parent.setSub(exprOrFormula);
              equivModel = MutantEquivalenceChecker
                  .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
              break;
            case FACT:
            case ASSERT:
              Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
                  .accept(new CloneVisitor(), null);
              parent.setSub(exprOrFormula);
              equivModel = MutantEquivalenceChecker
                  .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
              break;
            default:
              throw new UnsupportedOptionException(
                  UOI.class.getSimpleName() + " for expression is not supported in " + mi
                      .getType());
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
      parent.setSub(exprOrFormula);
    }
    else if (exprOrFormula instanceof BinaryFormula || exprOrFormula instanceof UnaryFormula
    		|| exprOrFormula instanceof QtFormula
    		|| exprOrFormula instanceof ITEFormula) {
    	ExprOrFormula parent = (ExprOrFormula) exprOrFormula.getParent();

    	for(UnaryFormula.UnaryOp unaryOp : UnaryFormula.UnaryOp.values()) {
    		if(unaryOp.getGroup() != UnaryFormula.UnaryOp.Group.TEMPORAL_OPERATOR || !mu.isTemporal()) {
    			continue;
    		}
    		
        	UnaryFormula wrapper = new UnaryFormula(exprOrFormula.getParent(), exprOrFormula.getType(), exprOrFormula, unaryOp);
        	parent.setSub(wrapper);
        	
        	String mutatedNodePathAsString = AlloyUtil.computeNodePathAsString(wrapper, opt.getPSV());
            String mutant = mu.accept(opt.getPSV(), null);

            if (AlloyUtil.isValidModel(mutant)) {
               String equivModel;
               switch (mi.getType()) {
                 case PRED:
                 case FUN:
                   PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode()
                       .accept(new CloneVisitor(), null);
                   parent.setSub(exprOrFormula);
                   equivModel = MutantEquivalenceChecker
                       .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
                   break;
                 case FACT:
                 case ASSERT:
                   Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
                       .accept(new CloneVisitor(), null);
                   parent.setSub(exprOrFormula);
                   equivModel = MutantEquivalenceChecker
                       .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
                 
                   break;
                 default:
                   throw new UnsupportedOptionException(
                       UOI.class.getSimpleName() + " for expression is not supported in " + mi
                           .getType());
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
        parent.setSub(exprOrFormula);

    }   
    else if (exprOrFormula instanceof ListFormula ) {

    	for(UnaryFormula.UnaryOp unaryOp : UnaryFormula.UnaryOp.values()) {
    		if(unaryOp.getGroup() != UnaryFormula.UnaryOp.Group.TEMPORAL_OPERATOR) {
    			continue;
    		}
    		
        	UnaryFormula wrapper = new UnaryFormula(exprOrFormula.getParent(), exprOrFormula.getType(), exprOrFormula, unaryOp);
        	wrapper.setParent(exprOrFormula.getParent());
        	String replace = exprOrFormula.accept(opt.getPSV(), null);
        	String with = wrapper.accept(opt.getPSV(), null);
        	
        	String mutatedNodePathAsString = AlloyUtil.computeNodePathAsString(wrapper, opt.getPSV());
            String mutant = mu.accept(opt.getPSV(), null);
            mutant = mutant.replace(replace,with);
            
            if (AlloyUtil.isValidModel(mutant)) {
               String equivModel;
               switch (mi.getType()) {
                 case PRED:
                 case FUN:
                   PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode()
                       .accept(new CloneVisitor(), null);
                   equivModel = MutantEquivalenceChecker
                       .buildEquivModel(mu, mutatedPredOrFun, opt.getScope());
                   String insert [] = equivModel.split(mutatedPredOrFun.getName());
                   equivModel = insert[0];
                   for(int i = 1; i < insert.length; i++)
                	   equivModel += mutatedPredOrFun.getName() + insert[i].replace(replace, with);
                  //  = insert[0] + mutatedPredOrFun.getName() + insert[1].replace(replace, with) + mutatedPredOrFun.getName() +  insert[2];
                   break;
                 case FACT:
                 case ASSERT:
                   Paragraph mutatedFactOrAssertion = (Paragraph) mi.getNode()
                       .accept(new CloneVisitor(), null);
                   equivModel = MutantEquivalenceChecker
                       .buildEquivModel(mu, mutatedFactOrAssertion, opt.getScope());
                   insert = equivModel.split(mutatedFactOrAssertion.getName());
                   equivModel = insert[0] + mutatedFactOrAssertion.getName() + insert[1].replace(replace, with) + mutatedFactOrAssertion.getName() +  insert[2];
                 
                   break;
                 default:
                   throw new UnsupportedOptionException(
                       UOI.class.getSimpleName() + " for expression is not supported in " + mi
                           .getType());
               }
               if(opt.checkEquiv()) {
            	   PredOrFun mutatedPredOrFun = (PredOrFun) mi.getNode()
                           .accept(new CloneVisitor(), null);
       	    	String in [] = mutant.split(mutatedPredOrFun.getName());
            	mutant = in[0];
            	for(int i = 1; i < in.length; i++)
            		mutant += mutatedPredOrFun.getName() + in[i].replace(replace, with);	    
           		res.add(MutationData.of(mutatedNodePathAsString, mutant, MutantEquivalenceChecker
           	            .checkEquivalenceAndGenerateTest(equivModel, mi.getNode(), opt)));
           		
           		//res.add(MutationData.of(mutatedNodePathAsString, mutant, MutantEquivalenceChecker
           	    //        .checkEquivalenceAndGenerateTest(equivModel, mi.getNode(), opt)));
           	}
           	else {
           		res.add(MutationData.of(mutatedNodePathAsString, mutant, 0));
           	}
             }
    	}
    }   
    return res;
  }
}
