module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all n: (one Node) {
(some ad: (one (n.adj)) {
(historically ((n in (ad.adj)) && ((ad.adj) !in n)))
})
})
}