module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv1[] {
(all n: (one Node) {
(all ad: (one n) {
((n in (ad.adj)) && ((ad.adj) in n))
})
})
}