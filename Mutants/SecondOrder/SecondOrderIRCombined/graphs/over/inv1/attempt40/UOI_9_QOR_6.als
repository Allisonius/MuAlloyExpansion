module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(one n: (one Node) {
(all ad: (one (n.adj)) {
(after ((n in (ad.adj)) && ((ad.adj) in n)))
})
})
}