module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(no var123456 : Node { ((some adj) => (var123456 in ((var123456.adj) + (adj.var123456))))})
}





