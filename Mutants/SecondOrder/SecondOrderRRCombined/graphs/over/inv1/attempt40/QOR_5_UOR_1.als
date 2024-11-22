module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(lone n: (one Node) {
(all ad: (one (n.adj)) {
((n in (ad.adj)) && ((ad.adj) in n))
})
})
}