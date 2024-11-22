module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(no n: (one Node) {
(some ad: (one (n.adj)) {
((n in (ad.adj)) && ((ad.(*adj)) in n))
})
})
}