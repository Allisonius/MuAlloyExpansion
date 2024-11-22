module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv3[] {
(some n: (lone Node) {
(no ((n.adj) & (adj.n)))
})
}