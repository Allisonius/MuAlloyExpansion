module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(lone disj n,m: (one Node) {
((n.adj) = m)
})
}