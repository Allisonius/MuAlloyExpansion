module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some disj n,m: (set Node) {
(((n.adj) = m) <=> ((m.adj) = n))
})
}