module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
((one disj n1,n2: (one Node) {
((n2 in (n1.adj)) => (n1 in (lone (n2.adj))))
}) && (all n: (one Node) {
(n in ((n.adj).adj))
}))
}