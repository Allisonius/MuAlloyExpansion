module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(some disj n1,n2: (one Node) {
(n1 in (adj.n2))
})
}