module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(historically ((all n: (one Node) {
((n.adj) = (Node - n))
}) && (all disj n1,n2: (one Node) {
(n1 = (adj.n2))
})))
}