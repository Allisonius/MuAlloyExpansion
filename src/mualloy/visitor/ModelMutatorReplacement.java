package mualloy.visitor;

import java.nio.file.Paths;
import java.util.Arrays;
import mualloy.opt.MutantGeneratorOpt;
import parser.ast.nodes.Node;
import parser.ast.nodes.OpenDecl;
import parser.etc.MutationData;
import parser.etc.Names;
import parser.util.FileUtil;

public class ModelMutatorReplacement extends MutationVisitorReplacement {

  private int count;
  private int equivMutantNum;
  private int nonEquivMutantNum;
  private int higherOrderNum;

  public ModelMutatorReplacement(MutantGeneratorOpt opt) {
    super(opt);
    this.count = 1;
    this.equivMutantNum = 0;
    this.nonEquivMutantNum = 0;
    this.higherOrderNum = 0;
  }

  @Override
  public void visit(OpenDecl n, Object arg) {
    if (n.getFileName().equals("util/ordering")) {
      MutantGeneratorOpt mgo = (MutantGeneratorOpt) opt;
      mgo.getSpecialCase().addOrderingOpenDecl(n);
      // Add ordering module if used.
      FileUtil.writeText(n.accept(opt.getPSV(), null) + Names.NEW_LINE,
          Paths.get(mgo.getMutantDirPath(), "open" + Names.DOT_ALS)
              .toString(), true);
    }
    super.visit(n, arg);
  }

  @Override
  protected void process(Node node, MutationData mutationData, Class<?> clazz) {
    if (mutationData.isEquivalent() == 1) {
      equivMutantNum++;
      return;
    }
    if (mutationData.isEquivalent() == 2) {
        higherOrderNum++;
        return;
      }
    else if (mutationData.isEquivalent() == 0) {
    	nonEquivMutantNum++;
    	MutantGeneratorOpt mgo = (MutantGeneratorOpt) opt;
    	   // System.out.println(String.join(Names.UNDERSCORE, Arrays.asList(clazz.getSimpleName(), String.valueOf(count++))));

    	    FileUtil.writeText(mutationData.getMutantAsString(), Paths.get(mgo.getMutantDirPath(),
    	        String.join(Names.UNDERSCORE, Arrays.asList(clazz.getSimpleName(), String.valueOf(count++)))
    	            + Names.DOT_ALS).toString(), false);
      }
    
    
  }

  public int getEquivMutantNum() {
    return equivMutantNum;
  }

  public int getNonEquivMutantNum() {
    return nonEquivMutantNum;
  }
  
  public int getHigherOrderNum() {
	    return higherOrderNum;
  }
}
