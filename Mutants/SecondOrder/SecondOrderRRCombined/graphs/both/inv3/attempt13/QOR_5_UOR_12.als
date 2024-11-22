module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(no n: (one Node) {
(some ((n.adj) & (adj.n)))
})
}