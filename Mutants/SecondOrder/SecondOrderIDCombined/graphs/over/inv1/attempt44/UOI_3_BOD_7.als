module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(once ((all n: (one Node) {
(n in (adj.(n.adj)))
}) && (all disj n1,n2: (one Node) {
(n1 in (n2.adj))
})))
}