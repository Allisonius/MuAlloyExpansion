module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(no var123456 : Node { ((var123456.adj) != (adj.var123456))})
}





