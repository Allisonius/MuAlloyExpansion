module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv1[] {
(all n: (one Node) {
(eventually (((n.adj) in Node) && (n in ((n.adj).adj))))
})
}