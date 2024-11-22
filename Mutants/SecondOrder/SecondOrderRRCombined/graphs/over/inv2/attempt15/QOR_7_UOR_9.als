module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(some e1: (some Node) {
(no ((Node.adj) & (adj.Node)))
})
}