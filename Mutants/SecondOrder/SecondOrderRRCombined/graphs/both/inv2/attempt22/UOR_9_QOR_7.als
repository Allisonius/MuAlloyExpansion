module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(some n: (lone Node) {
((n.adj) !in (adj.n))
})
}