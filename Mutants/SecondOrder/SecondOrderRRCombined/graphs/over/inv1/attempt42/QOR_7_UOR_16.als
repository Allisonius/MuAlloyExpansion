module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some n: (one Node) {
(some ad: (some (n.adj)) {
((n in (ad.adj)) && ((ad.adj) in n))
})
})
}