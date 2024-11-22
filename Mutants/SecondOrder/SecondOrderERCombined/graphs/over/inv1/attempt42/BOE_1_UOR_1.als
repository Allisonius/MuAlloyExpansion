module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(all n: (one Node) {
(some ad: (one (n.adj)) {
(((ad.adj) in n) && ((ad.adj) in n))
})
})
}