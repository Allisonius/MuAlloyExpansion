module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(all n,m: (one Node) {
(((m.adj) = n) => ((n.adj) = m))
})
}