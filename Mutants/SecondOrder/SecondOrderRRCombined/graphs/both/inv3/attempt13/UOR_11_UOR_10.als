module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(some n: (some Node) {
(lone ((n.adj) & (adj.n)))
})
}