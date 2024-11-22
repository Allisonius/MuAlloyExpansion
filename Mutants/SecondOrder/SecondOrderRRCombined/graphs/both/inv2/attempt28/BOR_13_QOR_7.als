module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(some n1: (one Node) {
((n1.adj) !in (adj.n1))
})
}