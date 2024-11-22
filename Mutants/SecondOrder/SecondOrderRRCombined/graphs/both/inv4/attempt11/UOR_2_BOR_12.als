module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv4[] {
((all n: (one Node) {
((n.adj) != (Node - n))
}) && (all disj n1,n2: (one Node) {
(n1 in (adj.n2))
}))
}