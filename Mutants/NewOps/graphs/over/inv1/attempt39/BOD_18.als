module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all n: (one Node) {
(lone m: (one Node) {
((n = m) => ((m.adj) = n))
})
})
}





