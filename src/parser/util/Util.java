package parser.util;

import static parser.etc.Context.logger;

import org.apache.commons.cli.HelpFormatter;
import org.apache.commons.cli.Options;

import mualloy.MutantGenerator;

public class Util {
	
	public static int CLI_USAGE_DESCRIPTION_WIDTH = 1000;
	
	public static void printMutantGeneratorUsage(HelpFormatter formatter, Options options) {
	    formatter.setOptionComparator(null);
	    formatter.printHelp(
	        CLI_USAGE_DESCRIPTION_WIDTH,
	        MutantGenerator.class.getSimpleName(),
	        "Generates non-equivalent mutants for a given model.  "
	            + "For each non-equivalent mutant, the tool creates an AUnit test case that kills it.  "
	            + "The mutants are stored in a user given directory.",
	        options,
	        null,
	        true);
	  }


  public static void printMutantGeneratorUsage() {
    logger.info(
        "MutantGenerator requires: model path, correct model path, target directory where mutants are generated, result directory, meta directory and scope."
    );
  }

  public static void printHigherOrderMutantGeneratorUsage() {
    logger.info(
        "MutantGenerator requires: model path, mutant dir path, result dir path, order number and optionally test path.");
  }

  public static void printMutationTestingRunnerUsage() {
    logger.info(
        "MutationTestingRunner requires: a directory which contains mutants and a test suite path."
    );
  }

  public static void printUnsatBasedFaultLocatorUsage() {
    logger.info(
        "UnsatBasedFaultLocator requires: model path, test path and result directory path."
    );
  }

  public static void printSatUnsatBasedFaultLocatorUsage() {
    logger.info(
        "SatUnsatBasedFaultLocator requires: model path, test path and result directory path."
    );
  }

  public static void printMutationFaultLocatorUsage() {
    logger.info(
        "MutationFaultLocator requires: model path, test path, correct model path (optional), scope, formula to compute suspiciousness score and the result directory path."
    );
  }

  public static void printHybridThresholdFaultLocatorUsage() {
    logger.info(
        "HybridThresholdFaultLocator requires: model path, test path, scope, formula, threshold and result directory path."
    );
  }

  public static void printHybridAverageFaultLocatorUsage() {
    logger.info(
        "HybridAverageFaultLocator requires: model path, test path, scope, formula, result directory path and mutationfl proportion."
    );
  }

  public static void printHybrid3AverageFaultLocatorUsage() {
    logger.info(
        "Hybrid3AverageFaultLocator requires: model path, test path, scope, formula and result directory path."
    );
  }

  public static void printAdvancedHybridAverageFaultLocatorUsage() {
    logger.info(
        "AdvancedHybridAverageFaultLocator requires: model path, test path, scope, formula and result directory path."
    );
  }

  public static void printRankReporterUsage() {
    logger.info(
        "RankReporter requires: fault location file and suspiciousness ranking file."
    );
  }

  public static void printEffectivenessReporterUsage() {
    logger.info(
        "EffectivenessReporter requires: serialized fault location file and serialized suspicious node list file."
    );
  }
}
