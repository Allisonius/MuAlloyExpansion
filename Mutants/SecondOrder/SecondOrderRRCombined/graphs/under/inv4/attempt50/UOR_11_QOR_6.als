module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(one n: (one Node) {
(lone ((n.adj) + (adj.n)))
})
}