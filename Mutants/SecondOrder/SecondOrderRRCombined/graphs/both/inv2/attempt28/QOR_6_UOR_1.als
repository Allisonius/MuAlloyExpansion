module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv2[] {
(one n1: (one Node) {
((n1.adj) != (adj.n1))
})
}