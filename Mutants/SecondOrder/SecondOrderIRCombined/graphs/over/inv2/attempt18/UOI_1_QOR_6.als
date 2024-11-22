module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(one n1,n2: (one Node) {
((n1 in (lone (n2.adj))) => (n2 !in (adj.n1)))
})
}