package parser.ast.visitor;

import java.util.HashSet;
import java.util.Set;
import parser.ast.nodes.Assertion;
import parser.ast.nodes.BinaryExpr;
import parser.ast.nodes.BinaryFormula;
import parser.ast.nodes.Body;
import parser.ast.nodes.CallExpr;
import parser.ast.nodes.CallFormula;
import parser.ast.nodes.Check;
import parser.ast.nodes.ConstExpr;
import parser.ast.nodes.ExprOrFormula;
import parser.ast.nodes.Fact;
import parser.ast.nodes.FieldDecl;
import parser.ast.nodes.FieldExpr;
import parser.ast.nodes.Function;
import parser.ast.nodes.ITEExpr;
import parser.ast.nodes.ITEFormula;
import parser.ast.nodes.LetExpr;
import parser.ast.nodes.ListExpr;
import parser.ast.nodes.ListFormula;
import parser.ast.nodes.ModelUnit;
import parser.ast.nodes.ModuleDecl;
import parser.ast.nodes.Node;
import parser.ast.nodes.OpenDecl;
import parser.ast.nodes.ParamDecl;
import parser.ast.nodes.Predicate;
import parser.ast.nodes.QtExpr;
import parser.ast.nodes.QtFormula;
import parser.ast.nodes.Run;
import parser.ast.nodes.SigDecl;
import parser.ast.nodes.SigExpr;
import parser.ast.nodes.UnaryExpr;
import parser.ast.nodes.UnaryFormula;
import parser.ast.nodes.VarDecl;
import parser.ast.nodes.VarExpr;
import parser.ast.nodes.BinaryExpr.BinaryOp;
import parser.ast.nodes.ListFormula.ListOp;
import parser.ast.nodes.QtExpr.Quantifier;
import parser.ast.nodes.UnaryExpr.UnaryOp;
import parser.ast.visitor.VoidVisitorAdapter;
import parser.exception.UnsupportedOptionException;

public class CountNodeTypesVisitor extends VoidVisitorAdapter<Object> {

  private boolean inSigDecl;
  private int cnt;
  private int cntRel;
  private int cntPl;
  private int cntFOL;
  private int cntLTL;
  private int cntInt;
  private Set<Node> visited;
  
  public int in;
  public int notin;
  public int equals;
  public int noteq;
  
  public int iff;
  public int implies;
  public int and;
  public int or;
  
  public int once;
  public int always;
  public int before;
  public int prime;
  public int hist;
  public int after;
  public int eventually;
  public int triggered;
  public int since;
  public int until;
  public int releases;
  
  public int quantall;
  public int quantsome;
  public int quantno;
  public int quantlone;
  public int quantone;
  public int compre;
  
  public int not;
  public int intersect;
  public int transpose;
  public int closure;
  public int rclosure;
  public int card;
  public int domain;
  public int range;
  public int join;
  
  public int lone;
  public int one;
  public int some;
  public int no;

  public CountNodeTypesVisitor () {
    this(new HashSet<>());
  }

  public CountNodeTypesVisitor(Set<Node> visited) {
    this.inSigDecl = false;
    this.cnt = 0;
    this.cntRel = 0;
    this.cntPl = 0;
    this.cntFOL = 0;
    this.cntLTL = 0;
    this.cntInt = 0;
    this.visited = visited;
  }

  public int getCnt() {
    return cnt;
  }

  public int getCntRel() {
	 return cntRel;
  }
  
  public int getCntPl() {
	 return cntPl;
  }
  public int getCntFOL() {
	 return cntFOL;
  }
  public int getCntLTL() {
	return cntLTL;
  }
  public int getCntInt() {
		return cntInt;
	  }
  public void visit(ModelUnit n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    cnt++;
    super.visit(n, arg);
  }

  public void visit(ModuleDecl n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    // We do not count module declaration because it's in the name of the Alloy module.
    super.visit(n, arg);
  }

  public void visit(OpenDecl n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    cnt++;
    super.visit(n, arg);
  }

  public void visit(SigDecl n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    inSigDecl = true;
    cnt++;
    super.visit(n, arg);
    inSigDecl = false;
  }

  public void visit(FieldDecl n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    cnt++;
    super.visit(n, arg);
  }

  public void visit(ParamDecl n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    cnt++;
    super.visit(n, arg);
  }

  public void visit(VarDecl n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    cnt++;
    super.visit(n, arg);
  }

  public void visit(ExprOrFormula n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    // We should not double count.
    super.visit(n, arg);
  }

  public void visit(SigExpr n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    cnt++;
    super.visit(n, arg);
  }

  public void visit(FieldExpr n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    cnt++;
    super.visit(n, arg);
  }

  public void visit(VarExpr n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    cnt++;
    super.visit(n, arg);
  }

  public void visit(UnaryExpr n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    // Only count meaningful AST Node
    if (n.getOp() != UnaryExpr.UnaryOp.NOOP) {
      cnt++;
      switch (n.getOp()) {
	      case SET:
	        cntRel++;
	        break;
	      case LONE:
	    	  cntRel++;
	    	  lone++;
	          break;
	      case ONE:
	    	  cntRel++;
	    	  one++;
	          break;
	      case SOME:
	    	  cntRel++;
	    	  some++;
	          break;
	      case EXACTLYOF:
	    	  break;
	      case TRANSPOSE:
	    	  cntRel++;
	    	  transpose++;
	          break;
	      case RCLOSURE:
	    	  cntRel++;
	    	  rclosure++;
	          break;
	      case CLOSURE:
	    	  cntRel++;
	    	  closure++;
	          break;
	      case CARDINALITY:
	    	  cntRel++;
	    	  card++;
	          break;
	      case CAST2INT:
	    	  break;
	      case CAST2SIGINT:
	    	  break;
	      case NOOP:
	    	  break;
	      case PRIME:
	    	  cntLTL++;
	    	  prime++;
	          break;
	      default:
	    	  break;
      }
    }
    super.visit(n, arg);
  }

  public void visit(UnaryFormula n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    cnt++;
    switch (n.getOp()) {
	    case LONE:
	    	cntRel++;
	    	lone++;
	          break;
	    case ONE:
	    	one++;
	    	cntRel++;
	        break;
	    case SOME:
	    	some++;
	    	cntRel++;
	        break;
	    case NO:
	    	no++;
	    	cntRel++;
	    	break;
	    case NOT:
	    	not++;
	    	cntRel++;
	        break;
	    case BEFORE:
	    	before++;
	    	cntLTL++;
	        break;
	    case HISTORICALLY:
	    	hist++;
	    	cntLTL++;
	        break;
	    case ONCE:
	    	once++;
	    	cntLTL++;
	        break;
	    case ALWAYS:
	    	always++;
	    	cntLTL++;
	        break;
	    case EVENTUALLY:
	    	eventually++;
	    	cntLTL++;
	        break;
	    case AFTER:
	    	after++;
	    	cntLTL++;
	        break;
	    default:
	    	 break;
    }
    super.visit(n, arg);
  }

  public void visit(BinaryExpr n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    if (inSigDecl) {
      if (n.getLeft() instanceof VarExpr) {
        String value = ((VarExpr) n.getLeft()).getName();
        if (value.equals("this")) {
          // We do not count left child and this node in this case.  So cnt-- for not
          // counting left child and we do not count this node, thus no count += 1.
          // E.g.
          // sig Book {
          //	entry: set Name,
          //	listed: entry ->set Listing
          // }
          // entry -> set Listing is actually this.entry -> set Listing.
          cnt--;
          super.visit(n, arg);
          return;
        }
      }
    }
    switch (n.getOp()) {
    	case ARROW:
    		cntRel++;
	        break;
	    case ANY_ARROW_SOME:
	    	cntRel++;
	        break;
	    case ANY_ARROW_ONE:
	    	cntRel++;
	        break;
	    case ANY_ARROW_LONE:
	    	cntRel++;
	        break;
	    case SOME_ARROW_ANY:
	    	cntRel++;
	        break;
	    case SOME_ARROW_SOME:
	    	cntRel++;
	        break;
	    case SOME_ARROW_ONE:
	    	cntRel++;
	        break;
	    case SOME_ARROW_LONE: 
	    	cntRel++;
	        break;
	    case ONE_ARROW_ANY:
	    	cntRel++;
	        break;
	    case ONE_ARROW_SOME:
	    	cntRel++;
	        break;
	    case ONE_ARROW_ONE:
	    	cntRel++;
	        break;
	    case ONE_ARROW_LONE:
	    	cntRel++;
	        break;
	    case LONE_ARROW_ANY:
	    	cntRel++;
	        break;
	    case LONE_ARROW_SOME:
	    	cntRel++;
	        break;
	    case LONE_ARROW_ONE:
	    	cntRel++;
	        break;
	    case LONE_ARROW_LONE:
	    	cntRel++;
	        break;
	    case ISSEQ_ARROW_LONE:
	    	cntRel++;
	        break;
	    case JOIN:
	    	join++;
	    	cntRel++;
	        break;
	    case DOMAIN:
	    	domain++;
	    	cntRel++;
	        break;
	    case RANGE:
	    	range++;
	    	cntRel++;
	        break;
	    case INTERSECT:
	    	intersect++;
	    	cntRel++;
	        break;
	    case PLUSPLUS:
	    	break;
	    case PLUS:
	    	cntRel++;
	        break;
	    case IPLUS:
	    	cntInt++;
	    	break;
	    case MINUS:
	    	cntRel++;
	        break;
	    case IMINUS:
	    	cntInt++;
	    	break;
	    case MUL:
	    	cntInt++;
	    	break;
	    case DIV:
	    	cntInt++;
	    	break;
	    case REM:
	    	cntInt++;
	    	break;
	    case SHL:
	    	cntInt++;
	    	break;
	    case SHA:
	    	cntInt++;
	    	break;
	    case SHR:
	    	cntInt++;
	    	break;
	    default:
	    	break;
	  }
    cnt++;
    super.visit(n, arg);
  }

  public void visit(BinaryFormula n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    switch (n.getOp()) {
    case EQUALS:
    	equals++;
    	cntRel++;
        break;
    case NOT_EQUALS:
    	noteq++;
    	cntRel++;
        break;
    case IMPLIES:
    	implies++;
    	cntPl++;
        break;
    case LT:
    	cntRel++;
        break;
    case LTE:
    	cntRel++;
        break;
    case GT:
    	cntRel++;
        break;
    case GTE:
	    cntRel++;
	    break;
    case NOT_LT:
    	cntRel++;
        break;
    case NOT_LTE:
    	cntRel++;
        break;
    case NOT_GT:
    	cntRel++;
        break;
    case NOT_GTE:
    	cntRel++;
        break;
    case IN:
    	in++;
    	cntRel++;
        break;
    case NOT_IN:
    	notin++;
    	cntRel++;
        break;
    case AND:
    	and++;
    	cntPl++;
        break;
    case OR:
    	or++;
    	cntPl++;
        break;
    case IFF:
    	iff++;
    	cntPl++;
        break;
    case UNTIL:
    	until++;
    	cntLTL++;
        break;
    case RELEASES:
    	releases++;
    	cntLTL++;
        break;
    case SINCE:
    	since++;
    	cntLTL++;
        break;
    case TRIGGERED:
    	triggered++;
    	cntLTL++;
        break;
    //case TRCSEQ:
  	//  return BinaryOp.
    default:
      break;
  }
    cnt++;
    super.visit(n, arg);
  }

  public void visit(ListExpr n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    cnt++;
    super.visit(n, arg);
  }

  public void visit(ListFormula n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    cnt++;
    switch (n.getOp()) {
    case AND:
    	and++;
    	cntPl++;
        break;
    case OR:
    	or++;
    	cntPl++;
        break;
    default:
      break;
  }
    super.visit(n, arg);
  }

  public void visit(CallExpr n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    cnt++;
    super.visit(n, arg);
  }

  public void visit(CallFormula n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    cnt++;
    cntPl++;
    super.visit(n, arg);
  }

  public void visit(QtExpr n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    cnt++;
    switch (n.getOp()) {
    case SUM:
    	cntFOL++;
        break;
    case COMPREHENSION:
    	compre++;
    	cntRel++;
        break;
    default:
      break;
  }
    super.visit(n, arg);
  }

  public void visit(QtFormula n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    switch (n.getOp()) {
    case SOME:
    	quantsome++;
        break;
    case ALL:
    	quantall++;
        break;
    case NO:
    	quantno++;
        break;
    case LONE:
    	quantlone++;
        break;
    case ONE:
    	quantone++;
        break;
    default:
      break;
  }
    cnt++;
    cntFOL++;
    super.visit(n, arg);
  }

  public void visit(ITEExpr n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    cnt++;
    cntPl++;
    super.visit(n, arg);
  }

  public void visit(ITEFormula n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    cnt++;
    cntPl++;
    super.visit(n, arg);
  }

  public void visit(LetExpr n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    cnt++;
    super.visit(n, arg);
  }

  public void visit(ConstExpr n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    cnt++;
    super.visit(n, arg);
  }

  public void visit(Body n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    cnt++;
    super.visit(n, arg);
  }

  public void visit(Predicate n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    cnt++;
    super.visit(n, arg);
  }

  public void visit(Function n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    cnt++;
    super.visit(n, arg);
  }

  public void visit(Fact n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    cnt++;
    super.visit(n, arg);
  }

  public void visit(Assertion n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    cnt++;
    super.visit(n, arg);
  }

  public void visit(Run n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    cnt++;
    super.visit(n, arg);
  }

  public void visit(Check n, Object arg) {
    if (visited.contains(n)) {
      return;
    }
    cnt++;
    super.visit(n, arg);
  }
}