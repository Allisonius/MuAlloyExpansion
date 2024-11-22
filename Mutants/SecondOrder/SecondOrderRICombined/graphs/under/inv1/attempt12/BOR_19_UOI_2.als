module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all n: (one Node) {
(some m: (one Node) {
(((n.(*adj)) != m) => ((m.adj) = n))
})
})
}