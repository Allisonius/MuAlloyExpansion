module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(some e1: (lone Node) {
(no ((Node.adj) & (adj.Node)))
})
}