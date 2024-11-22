module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(all var123456 : Node { (adj in (var123456->var123456))})
}





