module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
((all disj n1,n2: (one Node) {
(n1 in (one (n2.adj)))
}) && (all n: (one Node) {
(n in ((n.adj).adj))
}))
}