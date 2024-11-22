module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(before ((one n: (one Node) {
((n.adj) = (Node - n))
}) && (all disj n1,n2: (one Node) {
(n1 in (adj.n2))
})))
}