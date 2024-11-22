module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(all n: (one Node) {
((n in Node) => (((n.adj).adj) = n))
})
}