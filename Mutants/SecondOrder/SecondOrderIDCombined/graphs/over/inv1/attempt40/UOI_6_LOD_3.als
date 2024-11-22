module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all n: (one Node) {
(all ad: (one (n.adj)) {
(once ((ad.adj) in n))
})
})
}