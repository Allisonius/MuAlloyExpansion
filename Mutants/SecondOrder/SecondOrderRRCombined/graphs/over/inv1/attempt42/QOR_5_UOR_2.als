module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv1[] {
(lone n: (one Node) {
(some ad: (one (n.adj)) {
((n in (ad.adj)) && ((ad.adj) in n))
})
})
}