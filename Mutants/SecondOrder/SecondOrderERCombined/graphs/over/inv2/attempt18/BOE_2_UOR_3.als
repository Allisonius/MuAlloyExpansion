module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv2[] {
(all n1,n2: (one Node) {
(((n2.adj) in n1) => (n2 !in (adj.n1)))
})
}