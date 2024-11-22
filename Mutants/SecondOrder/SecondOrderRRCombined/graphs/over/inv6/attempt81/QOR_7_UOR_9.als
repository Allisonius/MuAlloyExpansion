module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some n1: (some Node) {
(Node in ((n1.adj) + (adj.n1)))
})
}