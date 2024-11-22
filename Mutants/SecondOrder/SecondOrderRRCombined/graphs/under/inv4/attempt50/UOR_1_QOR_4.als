module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(no n: (one Node) {
(some ((n.adj) + (adj.n)))
})
}