module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv5[] {
(all var123456 : Node { (adj = ((var123456->var123456) - iden))})
}





