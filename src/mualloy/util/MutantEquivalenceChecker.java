package mualloy.util;

import static parser.etc.Names.DOLLAR;
import static parser.etc.Names.UNDERSCORE;

import edu.mit.csail.sdg.alloy4.A4Reporter;
import edu.mit.csail.sdg.alloy4.Err;
import edu.mit.csail.sdg.ast.Command;
import edu.mit.csail.sdg.ast.Expr;
import edu.mit.csail.sdg.parser.CompModule;
import edu.mit.csail.sdg.parser.CompUtil;
import edu.mit.csail.sdg.translator.A4Solution;
import edu.mit.csail.sdg.translator.TranslateAlloyToKodkod;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import mualloy.opt.MutantGeneratorOpt;
import parser.ast.nodes.Assertion;
import parser.ast.nodes.Check;
import parser.ast.nodes.Fact;
import parser.ast.nodes.FieldDecl;
import parser.ast.nodes.ModelUnit;
import parser.ast.nodes.Node;
import parser.ast.nodes.Paragraph;
import parser.ast.nodes.ParamDecl;
import parser.ast.nodes.PredOrFun;
import parser.ast.nodes.Predicate;
import parser.ast.nodes.Run;
import parser.ast.nodes.SigDecl;
import parser.ast.nodes.UnaryExpr;
import parser.ast.visitor.PrettyStringVisitor;
import parser.etc.Context;
import parser.etc.Names;
import parser.opt.Opt;
import parser.util.AlloyUtil;
import parser.util.FileUtil;

public class MutantEquivalenceChecker {
	
	/**
	   * Build equivalence model to check sig variability change.
	   */
	  public static String buildEquivModel(ModelUnit mu, SigDecl mutatedSigDecl, boolean inserted, int scope) {
	    String formula;
	    if(inserted) { //Was static, changed to variable
	    	formula = mutatedSigDecl.getName() + " = " + mutatedSigDecl.getName() + "'";
	    }
	    else { //Was variable, changed to static
	    	formula = mutatedSigDecl.getName() + " = " + mutatedSigDecl.getName() + "'";
	    }
	    return mu.accept(new PrettyStringVisitor(), null) + Names.NEW_LINE + Names.EQUIV_ASSERTION_NAME
	        + ": check { " + formula + " } for " + scope;
	  }
	  

		/**
		   * Build equivalence model to check field variability change.
		   */
		  public static String buildEquivModel(ModelUnit mu, FieldDecl mutatedFieldDecl, boolean inserted, int scope) {
		    String formula;
		    if(inserted) { //Was static, changed to variable
		    	formula = mutatedFieldDecl.getNames().get(0) + " = " + mutatedFieldDecl.getNames().get(0) + "'";
		    }
		    else { //Was variable, changed to static
		    	formula = mutatedFieldDecl.getNames().get(0) + " = " + mutatedFieldDecl.getNames().get(0)  + "'";
		    }
		    return mu.accept(new PrettyStringVisitor(), null) + Names.NEW_LINE + Names.EQUIV_ASSERTION_NAME
		        + ": check { " + formula + " } for " + scope;
		  }



  /**
   * Build equivalence model to check sig multiplicity change.
   */
  public static String buildEquivModel(ModelUnit mu, SigDecl mutatedSigDecl, SigDecl.MULT from,
      SigDecl.MULT to, int scope) {
    String formula;
    if (from == SigDecl.MULT.SET) {
      formula = to + mutatedSigDecl.getName();
    } else if (to == SigDecl.MULT.SET) {
      formula = from + mutatedSigDecl.getName();
    } else {
      formula = from + mutatedSigDecl.getName() + " <=> " + to + mutatedSigDecl.getName();
    }
    return mu.accept(new PrettyStringVisitor(), null) + Names.NEW_LINE + Names.EQUIV_ASSERTION_NAME
        + ": check { " + formula + " } for " + scope;
  }

  /**
   * Build equivalence model to check field quantifier change.
   */
  public static String buildEquivModel(ModelUnit mu, SigDecl mutatedSigDecl,
      FieldDecl mutatedFieldDecl, UnaryExpr.UnaryOp from, UnaryExpr.UnaryOp to, int scope) {
    StringBuilder template = new StringBuilder();
    String varName = mutatedSigDecl.getName().substring(0, 1).toLowerCase();
    template.append(mu.accept(new PrettyStringVisitor(), null)).append(Names.NEW_LINE);
    String leftFormula = String.join(" && ",
        mutatedFieldDecl.getNames().stream().map(name -> from + varName + "." + name)
            .collect(Collectors.toList()));
    String rightFormula = String.join(" && ",
        mutatedFieldDecl.getNames().stream().map(name -> to + varName + "." + name)
            .collect(Collectors.toList()));
    String quantifiedPrefix = "all " + varName + ": " + mutatedSigDecl.getName() + " | ";
    String finalFormula;
    if (from == UnaryExpr.UnaryOp.SET) {
      finalFormula = quantifiedPrefix + rightFormula;
    } else if (to == UnaryExpr.UnaryOp.SET) {
      finalFormula = quantifiedPrefix + leftFormula;
    } else {
      finalFormula =
          "(" + quantifiedPrefix + leftFormula + ") <=> (" + quantifiedPrefix + rightFormula + ")";
    }
    template.append(Names.EQUIV_ASSERTION_NAME).append(": check { ").append(finalFormula)
        .append(" } for ").append(scope);
    return template.toString();
  }

  /**
   * Build equivalence model to check predicate or function change.
   */
  public static String buildEquivModel(ModelUnit mu, PredOrFun mutatedPredOrFun, int scope) {
	  
    PrettyStringVisitor psv = new PrettyStringVisitor();
    StringBuilder template = new StringBuilder();
    
	String original = mu.filename;
    CompModule module = AlloyUtil.compileAlloyModule(original);
    ModelUnit orig = new ModelUnit(null, module, original);
    template.append(orig.accept(psv, null)).append(Names.NEW_LINE);
    
    //restore
    //template.append(mu.accept(new PrettyStringVisitor(), null)).append(Names.NEW_LINE);
    String originalPredOrFunName = mutatedPredOrFun.getName().replaceAll("\\" + DOLLAR, UNDERSCORE);
    String mutatedPredOrFunName = originalPredOrFunName + Names.MUTATED;
    mutatedPredOrFun.setName(mutatedPredOrFunName);
    template.append(mutatedPredOrFun.accept(psv, null)).append(Names.NEW_LINE);
    boolean isPred = mutatedPredOrFun instanceof Predicate;
    List<String> varNameList = new ArrayList<>();
    List<String> argList = new ArrayList<>();
    for (ParamDecl paramDecl : mutatedPredOrFun.getParamList()) {
      String varNames = String.join(Names.COMMA, paramDecl.getNames());
      String varType = psv.visit(paramDecl.getExpr(), null);
      varNameList.add(varNames + ": " + varType);
      argList.add(varNames);
    }
    String varDecls = String.join(Names.COMMA, varNameList);
    String args = "[" + String.join(Names.COMMA, argList) + "]";
    String quantifiedPrefix = varNameList.size() == 0 ? "" : "all " + varDecls + " | "; 
    template.append(Names.EQUIV_ASSERTION_NAME).append(": check { ").append(quantifiedPrefix)
        .append(originalPredOrFunName).append(args).append(isPred ? " <=> " : " = ")
        .append(mutatedPredOrFunName).append(args).append(" } for ").append(scope);
    //System.out.println(template.toString());
    /*template.append(Names.EQUIV_ASSERTION_NAME).append(": run { ").append(quantifiedPrefix)
    .append(originalPredOrFunName).append(args).append(isPred ? " and !" : " = ")
    .append(mutatedPredOrFunName).append(args).append(" and #File = 3} for ").append(scope);*/
    //System.out.println(template.toString());
    //System.out.println("----");
    return template.toString();
  }

  /**
   * Build equivalence model to check fact or assertion change.
   */
  public static String buildEquivModel(ModelUnit mu, Paragraph mutatedFactOrAssert, int scope) {
    PrettyStringVisitor psv = new PrettyStringVisitor() {
      @Override
      public String visit(Fact n, Object arg) {
        if (n.getName().equals(mutatedFactOrAssert.getName()) || n.getName()
            .contains(Names.MUTATED)) {
          return "pred " + n.getName().replaceAll("\\" + DOLLAR, UNDERSCORE) + "[] " + n.getBody()
              .accept(this, arg);
        }
        return "fact " + n.getName().replaceAll("\\" + DOLLAR, UNDERSCORE) + " " + n.getBody()
            .accept(this, arg);
      }

      @Override
      public String visit(Assertion n, Object arg) {
        if (n.getName().equals(mutatedFactOrAssert.getName()) || n.getName()
            .contains(Names.MUTATED)) {
          return "pred " + n.getName().replaceAll("\\" + DOLLAR, UNDERSCORE) + "[] " + n.getBody()
              .accept(this, arg);
        }
        return "assert " + n.getName().replaceAll("\\" + DOLLAR, UNDERSCORE) + " " + n.getBody()
            .accept(this, arg);
      }

      @Override
      public String visit(Run run, Object arg) {
        return "";
      }

      @Override
      public String visit(Check check, Object arg) {
        return "";
      }
    };
    StringBuilder template = new StringBuilder();
    template.append(mu.accept(psv, null)).append(Names.NEW_LINE);
    String originalFactOrAssertName = mutatedFactOrAssert.getName()
        .replaceAll("\\" + DOLLAR, UNDERSCORE);
    String mutatedFactOrAssertName = originalFactOrAssertName + Names.MUTATED;
    mutatedFactOrAssert.setName(mutatedFactOrAssertName);
    template.append(mutatedFactOrAssert.accept(psv, null)).append(Names.NEW_LINE);
    template.append(Names.EQUIV_ASSERTION_NAME).append(": check { ")
        .append(originalFactOrAssertName).append("[] <=> ").append(mutatedFactOrAssertName)
        .append("[] } for ").append(scope);
    return template.toString();
  }

  /**
   * Check if a mutant is equivalent to the original model.  If so, return true. Otherwise, save the
   * mutant and generate a test that kills it.
   */
  public static int checkEquivalenceAndGenerateTest(String equivModel, Node node, Opt opt) {
    FileUtil.writeText(equivModel, Names.EQUIV_FILE_PATH, false);
    
    //System.out.println(equivModel);
    
    CompModule module = AlloyUtil.compileAlloyModule(Names.EQUIV_FILE_PATH);

    if(module == null)
    	System.out.println(equivModel);
    assert module != null;
   // if(module == null)
    //	return true;
    Command equivCmd = module.getAllCommands().stream()
	        .filter(command -> command.label.equals(Names.EQUIV_ASSERTION_NAME)).findFirst().get();
   // System.out.println(equivCmd.formula);
    try {
    
    	//System.out.println(equivModel);

    	equivCmd.change(equivCmd.formula.and(module.getAllReachableFacts()));
        // equivCmd.change(equivCmd.formula.not().and(module.getAllReachableFacts()));
     	//Expr test = CompUtil.parseOneExpression_fromString(module, "!(prop1[] <=> prop1MUTATED[])");
     	//Command handleFacts = new Command(false, 3, 3, 3, test.and(module.getAllReachableFacts()));
       //  System.out.println(equivCmd.formula);

       A4Solution ans = TranslateAlloyToKodkod
           .execute_commandFromBook(A4Reporter.NOP, module.getAllReachableSigs(), equivCmd,
               opt.getOptions());
       if (!ans.satisfiable()) {  
       		Context.logger.debug("Equivalent mutant is detected with the following model:");
            Context.logger.debug(equivModel);
            return 1;
       }
       
       if (opt instanceof MutantGeneratorOpt) {
         TestGenerator.generateAndSaveAUnitTest(module, ans, node, (MutantGeneratorOpt) opt);
       }
       return 0;
    
    
    } catch (Err err) {
      err.printStackTrace();
    }
    return 2;
  }
}
