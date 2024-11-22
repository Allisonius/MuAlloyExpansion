module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(some n1: (lone Node) {
((n1.adj) != (adj.n1))
})
}