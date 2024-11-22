module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all n: (one Node) {
(some ad: (one (n.adj)) {
((n in (ad.adj)) && (n != (ad.adj)))
})
})
}