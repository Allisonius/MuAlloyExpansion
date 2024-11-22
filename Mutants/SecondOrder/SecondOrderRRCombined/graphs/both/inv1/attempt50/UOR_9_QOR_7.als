module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some disj n,m: (lone Node) {
(((n.adj) in m) => ((m.adj) in n))
})
}