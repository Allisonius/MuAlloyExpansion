module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
((all n: (one Node) {
(n in (adj.(n.adj)))
}) && (all disj n1,n2: (one Node) {
((n2 in n1) => (n1 in (lone (n2.adj))))
}))
}