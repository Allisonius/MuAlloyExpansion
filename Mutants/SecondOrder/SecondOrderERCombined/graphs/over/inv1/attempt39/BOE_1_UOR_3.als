module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv1[] {
(all n: (one Node) {
(lone m: (one Node) {
(((m.adj) = n) => ((n.adj) = m))
})
})
}