module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(one n,m: (one Node) {
(((n.adj).adj) = n)
})
}