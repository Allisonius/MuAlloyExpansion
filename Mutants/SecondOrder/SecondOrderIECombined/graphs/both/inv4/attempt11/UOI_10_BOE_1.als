module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
((all n: (one Node) {
((n.adj) = (n - Node))
}) && (all disj n1,n2: (one Node) {
(n1 in (lone (adj.n2)))
}))
}