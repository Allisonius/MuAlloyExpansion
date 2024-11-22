module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv1[] {
(once ((all n: (one Node) {
(n in (adj.(n.adj)))
}) && (all disj n1,n2: (one Node) {
((n2 in (n1.adj)) => (n1 in (n2.adj)))
})))
}