module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(all n: (one Node) {
(some m: (one Node) {
(((n.adj) !in m) => ((m.adj) = n))
})
})
}