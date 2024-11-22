import static parser.etc.Context.logger;
import static parser.etc.Names.MODEL_PATH;
import static parser.etc.Names.MUTANT_DIR;
import static parser.etc.Names.SCOPE;
import static parser.etc.Names.TEST_PATH;
import static parser.util.Util.printMutantGeneratorUsage;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Scanner;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.apache.commons.cli.CommandLine;
import org.apache.commons.cli.CommandLineParser;
import org.apache.commons.cli.DefaultParser; 
import org.apache.commons.cli.HelpFormatter;
import org.apache.commons.cli.Options;
import org.apache.commons.cli.ParseException;

import edu.mit.csail.sdg.parser.CompModule;
import mualloy.opt.MutantGeneratorOpt;
import mualloy.util.AUnitTestCase;
import mualloy.visitor.ModelMutator;
import mualloy.visitor.ModelMutatorDeletion;
import mualloy.visitor.ModelMutatorExchange;
import mualloy.visitor.ModelMutatorInsertion;
import mualloy.visitor.ModelMutatorReplacement;
import parser.ast.nodes.ModelUnit;
import parser.ast.nodes.SigDecl;
import parser.etc.Names;
import parser.util.AlloyUtil;
import parser.util.FileUtil;
import parser.util.StringUtil;

public class MutantGenerator_ExchangeReplace {

  public static void mutate(MutantGeneratorOpt opt) {
	long startTime = System.currentTimeMillis();
	System.out.println(opt.getModelPath());
    CompModule module = AlloyUtil.compileAlloyModule(opt.getModelPath());
    
    	 ModelUnit mu = new ModelUnit(null, module,opt.getAttemptPath());
    	    // Mutate the model.
    	 //edit
	    ModelMutatorReplacement mm = new ModelMutatorReplacement(opt);
	    mu.accept(mm, null);
	    StringBuilder testSuite = new StringBuilder();
	    int count = 1;
	    for (AUnitTestCase testCase : opt.getTests()) {
	      testSuite.append(testCase.toString(count++)).append("\n");
	    }
	    if (!opt.noTest()) { 
	  	  String open = "";

	      Path openPath = Paths.get(opt.getMutantDirPath()+ File.separatorChar + "open.als").toAbsolutePath();
	      if (FileUtil.fileExists(openPath.toString())) {
	    	  try {
	    	      File myObj = new File(opt.getMutantDirPath()+ File.separatorChar + "open.als");
	    	      Scanner myReader = new Scanner(myObj);
	    	      while (myReader.hasNextLine()) {
	    	        open += myReader.nextLine() + "\n";
	    	      }
	    	      myReader.close();
	    	    } catch (Exception e) {
	    	      System.out.println("An error occurred.");
	    	      e.printStackTrace();
	    	    }   
	    	  FileUtil.deleteFile(openPath.toString());
	      }
	      FileUtil.writeText(open + "\n" + testSuite.toString(), opt.getTestPath(), true);
	    }
	    long endTime = System.currentTimeMillis();

	    String results = "";
	    logger.info("Equivalent Mutant Number: " + mm.getEquivMutantNum());
	    results += "Equivalent Mutant Number: " + mm.getEquivMutantNum() + "\n";
	    logger.info("Non-Equivalent Mutant Number: " + mm.getNonEquivMutantNum());
	    results += "Non-Equivalent Mutant Number: " + mm.getNonEquivMutantNum() + "\n";
	    
	    if (!opt.noTest()) {
  	      logger.info("Unique Test Number: " + opt.getTests().size());
  	      results += "Unique Test Number: " + opt.getTests().size() + "\n";
  	      results += "Generation Time with Tests: " + (endTime - startTime);
  	    }
  	    else
  	    	results += "Generation Time: " + (endTime - startTime) + "\n";
	    
	    //Print results
	    String file = opt.getTestPath();
	    file = file.replace("tests.als","gen.res");
	    try {
			FileWriter filerWriter = new FileWriter(file);
			PrintWriter printWriter = new PrintWriter(filerWriter);
			printWriter.print(results);
			printWriter.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	    
   }

  /**
   * This function is used to avoid the Alloy4.2 bug reported in https://github.com/AlloyTools/org.alloytools.alloy/issues/20
   */
  private static void constrainUnivInTestSuite(MutantGeneratorOpt opt, List<SigDecl> sigDecls) {
    String fact = "fact UnivConstraint {\nuniv = "
        + String.join(" + ", sigDecls.stream().map(SigDecl::getName).collect(Collectors.toList()))
        + "\n}";
    FileUtil.writeText(fact, opt.getTestPath(), true);
  }

  private static MutantGeneratorOpt parseCommandLineArgs(String[] args) {
    Options options = new Options();
    options.addRequiredOption("o", MODEL_PATH, true, "Path of the original model.");
    options.addRequiredOption("m", MUTANT_DIR, true, "Directory to save mutants.");
    options.addOption("s", SCOPE, true, "Scope to run equivalence checking.");
    options.addOption("t", TEST_PATH, true, "Path of mutant killing tests.");
    options.addOption("f", "ATTEMPT_PATH", true, "Origing attempt before mutations");

    CommandLineParser parser = new DefaultParser();
    HelpFormatter formatter = new HelpFormatter();

    try {
      CommandLine commandLine = parser.parse(options, args);
      Path modelPath = Paths.get(commandLine.getOptionValue(MODEL_PATH)).toAbsolutePath();
      if (!FileUtil.fileExists(modelPath.toString())) {
        logger.error("Cannot find model at " + modelPath);
        printMutantGeneratorUsage(formatter, options);
        return null;
      }
      //Clear directory for mutants and recreate it
      Path mutantDir = Paths.get(commandLine.getOptionValue(MUTANT_DIR)).toAbsolutePath();
      FileUtil.deleteDirectory(mutantDir.toAbsolutePath().toString());
      FileUtil.createDirsIfNotExist(mutantDir.toString());
      int scope = Integer.parseInt(commandLine.getOptionValue(SCOPE, "3"));
      //Create test path
      String testPath = commandLine.getOptionValue(TEST_PATH, null);
      if (testPath != null) {
        testPath = Paths.get(testPath).toAbsolutePath().toString();
        FileUtil.createDirsIfNotExist(Paths.get(testPath).getParent().toString());
        FileUtil.deleteFile(testPath);
      }
      Path attemptPath = Paths.get(commandLine.getOptionValue("ATTEMPT_PATH")).toAbsolutePath();
      return new MutantGeneratorOpt(modelPath.toString(), mutantDir.toString(), scope, testPath, true, attemptPath.toString());
    } catch (ParseException e) {
      logger.error(e.getMessage());
      printMutantGeneratorUsage(formatter, options);
      return null;
    }
  } 

  public static void main(String[] args) {	   
	MutantGeneratorOpt opt = parseCommandLineArgs(args);
	if (opt == null) {
	    return;
	}
	mutate(opt);
  }
  
  public static Set<String> listFoldersUsingJavaIO(String dir) {
	    return Stream.of(new File(dir).listFiles())
	      .filter(file -> file.isDirectory())
	      .map(File::getName)
	      .collect(Collectors.toSet());
	}
  
  
	public static Set<String> listFilesUsingJavaIO(String dir) {
	    return Stream.of(new File(dir).listFiles())
	      .filter(file -> !file.isDirectory())
	      .map(File::getName)
	      .collect(Collectors.toSet());
	}
}
