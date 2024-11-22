module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv3[] {
(some n: (set Node) {
(no ((n.adj) & (adj.n)))
})
}