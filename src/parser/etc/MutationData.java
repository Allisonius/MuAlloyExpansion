package parser.etc;

import mualloy.visitor.MutationVisitor;
import parser.ast.nodes.Node;

/**
 * This class contains data after applying alloyfl.mutation operators. The data will be fed into {@link
 * MutationVisitor#process(Node, MutationData, Class)}.
 */
public class MutationData {

  private final String mutatedNodePathAsString;
  private final String mutantAsString;
  private final int isEquivalent;

  private MutationData(String mutatedNodePathAsString, String mutantAsString,
      int isEquivalent) {
    this.mutatedNodePathAsString = mutatedNodePathAsString;
    this.mutantAsString = mutantAsString;
    this.isEquivalent = isEquivalent;
  }

  public static MutationData of(String mutatedNodePathAsString, String mutantAsString,
      int isEquivalent) {
    return new MutationData(mutatedNodePathAsString, mutantAsString, isEquivalent);
  }

  public String getMutatedNodePathAsString() {
    return mutatedNodePathAsString;
  }

  public String getMutantAsString() {
    return mutantAsString;
  }

  public int isEquivalent() {
    return isEquivalent;
  }
}
