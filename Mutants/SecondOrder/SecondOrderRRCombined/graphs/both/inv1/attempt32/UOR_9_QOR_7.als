module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some n: (lone Node) {
(some ((n.adj) & (adj.n)))
})
}