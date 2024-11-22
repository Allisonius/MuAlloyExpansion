module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(one n: (one Node) {
(all ad: (one (n.adj)) {
((n in ad) && ((ad.adj) in n))
})
})
}