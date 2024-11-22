module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(some n: (set Node) {
((adj.n) !in (n.adj))
})
}