module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all n: (one Node) {
(before (((n.adj) = n) && ((n.adj) != none)))
})
}