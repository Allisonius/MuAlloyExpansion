module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv1[] {
(all disj n,m: (one Node) {
(((m.adj) in n) => ((n.adj) in m))
})
}