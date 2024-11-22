module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv2[] {
(no e1: (one Node) {
(no ((Node.adj) & (adj.Node)))
})
}