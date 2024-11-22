package mualloy.rule;

import java.util.ArrayList;
import java.util.List;
import mualloy.util.MInfo;
import mualloy.util.MutantEquivalenceChecker;
import parser.ast.nodes.FieldDecl;
import parser.ast.nodes.ModelUnit;
import parser.ast.nodes.SigDecl;
import parser.etc.MutationData;
import parser.exception.UnsupportedOptionException;
import parser.opt.Opt;
import parser.util.AlloyUtil;

/**
 * Variable Operator Insertion
 */
public class VOD {

  public static List<MutationData> mutate(SigDecl sigDecl, ModelUnit mu, Opt opt, MInfo mi) {
    List<MutationData> res = new ArrayList<>();
    if (mi.getType() == MInfo.MType.IGNORE) {
      return res;
    }
    boolean original = sigDecl.isVariable();
    
    if(!sigDecl.isVariable())
    	return res; //If already static, leave
    
      sigDecl.setVariable(false);
//            String mutatedPartAsString = sigDecl.accept(opt.getPSV(), null);
      String mutatedNodePathAsString = AlloyUtil.computeNodePathAsString(sigDecl, opt.getPSV());
      String mutant = mu.accept(opt.getPSV(), null);
      // Check if the mutant compiles.
      if (AlloyUtil.isValidModel(mutant)) {
        // Check if the mutant is equivalent to the original model.
        String equivModel;
        switch (mi.getType()) {
          case SIG:
        	 sigDecl.setVariable(true);
            equivModel = MutantEquivalenceChecker
                .buildEquivModel(mu, (SigDecl) mi.getNode(), false, opt.getScope());
            break;
          default:
            throw new UnsupportedOptionException(
                VOI.class.getSimpleName() + " is not supported in " + mi.getType());
        }
        if(AlloyUtil.isValidModel(equivModel)) {
        	if(opt.checkEquiv()) {
        		res.add(MutationData.of(mutatedNodePathAsString, mutant, MutantEquivalenceChecker
        	            .checkEquivalenceAndGenerateTest(equivModel, mi.getNode(), opt)));
        	}
        	else {
        		res.add(MutationData.of(mutatedNodePathAsString, mutant, 0));
        	}
        }
      }
    
    sigDecl.setVariable(original);
    return res;
  }
  
  public static List<MutationData> mutate(FieldDecl fieldDecl, ModelUnit mu, Opt opt, MInfo mi) {
	    List<MutationData> res = new ArrayList<>();
	    if (mi.getType() == MInfo.MType.IGNORE) {
	      return res;
	    }
	    boolean original = fieldDecl.isVariable();
	    
	    if(!fieldDecl.isVariable())
	    	return res; //If already static, leave
	    
	    fieldDecl.setVariable(false);
//	            String mutatedPartAsString = sigDecl.accept(opt.getPSV(), null);
	      String mutatedNodePathAsString = AlloyUtil.computeNodePathAsString(fieldDecl, opt.getPSV());
	      String mutant = mu.accept(opt.getPSV(), null);
	      // Check if the mutant compiles.
	      if (AlloyUtil.isValidModel(mutant)) {
	        // Check if the mutant is equivalent to the original model.
	        String equivModel;
	        switch (mi.getType()) {
	          case FIELD:
	        	  fieldDecl.setVariable(true);
	            equivModel = MutantEquivalenceChecker
	                .buildEquivModel(mu, (FieldDecl) mi.getExtraNode(), false, opt.getScope());
	            break;
	          default:
	            throw new UnsupportedOptionException(
	                VOI.class.getSimpleName() + " is not supported in " + mi.getType());
	        }
	        if(AlloyUtil.isValidModel(equivModel)) {
	        	if(opt.checkEquiv()) {
	        		res.add(MutationData.of(mutatedNodePathAsString, mutant, MutantEquivalenceChecker
	        	            .checkEquivalenceAndGenerateTest(equivModel, mi.getNode(), opt)));
	        	}
	        	else {
	        		res.add(MutationData.of(mutatedNodePathAsString, mutant, 0));
	        	}
	        }
	      }
	    
	      fieldDecl.setVariable(original);
	    return res;
	  }
}
