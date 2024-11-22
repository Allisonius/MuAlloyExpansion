module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv2[] {
(all e1: (one Node) {
(one ((Node.adj) & (adj.Node)))
})
}