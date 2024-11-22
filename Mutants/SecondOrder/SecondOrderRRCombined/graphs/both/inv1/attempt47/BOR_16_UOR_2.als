module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv1[] {
(all disj n,m: (one Node) {
(((n.adj) = m) <=> ((m.adj) in n))
})
}