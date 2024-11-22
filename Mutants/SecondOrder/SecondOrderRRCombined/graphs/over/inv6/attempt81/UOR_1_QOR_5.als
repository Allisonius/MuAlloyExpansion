module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
(lone n1: (one Node) {
(Node in ((n1.adj) + (adj.n1)))
})
}