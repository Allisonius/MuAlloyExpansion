module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all n: (one Node) {
(lone ad: (one (n.adj)) {
((n in (ad.adj)) && ((ad.(^adj)) in n))
})
})
}