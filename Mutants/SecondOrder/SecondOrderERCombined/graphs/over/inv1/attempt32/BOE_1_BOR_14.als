module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all disj n,n1: (one Node) {
(((n.adj) !in n1) && (n in (n1.adj)))
})
}