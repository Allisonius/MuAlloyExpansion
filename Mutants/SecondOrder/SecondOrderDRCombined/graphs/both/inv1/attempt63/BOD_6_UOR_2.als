module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv1[] {
(all n: (one Node) {
(all ad: (one (n.adj)) {
((#((n->(ad.adj)) + (ad->n))) = 2)
})
})
}