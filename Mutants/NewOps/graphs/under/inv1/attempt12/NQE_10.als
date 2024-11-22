module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some m: (one Node) {
(all n: (one Node) {
(((n.adj) = m) => ((m.adj) = n))
})
})
}





