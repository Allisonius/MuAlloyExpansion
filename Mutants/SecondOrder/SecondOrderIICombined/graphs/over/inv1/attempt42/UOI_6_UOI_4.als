module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all n: (one Node) {
(some ad: (one (n.adj)) {
(once ((n in (ad.adj)) && ((ad.(*adj)) in n)))
})
})
}