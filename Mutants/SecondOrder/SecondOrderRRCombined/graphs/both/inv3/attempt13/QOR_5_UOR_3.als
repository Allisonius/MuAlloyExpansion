module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv3[] {
(no n: (one Node) {
(no ((n.adj) & (adj.n)))
})
}