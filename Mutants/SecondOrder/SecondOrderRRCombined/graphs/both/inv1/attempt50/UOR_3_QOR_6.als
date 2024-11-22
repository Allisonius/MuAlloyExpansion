module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv1[] {
(one disj n,m: (one Node) {
(((n.adj) in m) => ((m.adj) in n))
})
}