module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv1[] {
(one n: (one Node) {
(((n.adj) in Node) => (((n.adj).adj) = n))
})
}