module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(historically ((all disj n1,n2: (one Node) {
((n2 in (n1.adj)) => (n1 in (n2.adj)))
}) && (all n: (one Node) {
(n in ((n.adj).adj))
})))
}