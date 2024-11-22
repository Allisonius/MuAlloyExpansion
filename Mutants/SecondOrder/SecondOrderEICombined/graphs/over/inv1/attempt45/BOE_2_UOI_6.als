module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(after ((all disj n1,n2: (one Node) {
(((n1.adj) in n2) => (n1 in (n2.adj)))
}) && (all n: (one Node) {
(n in ((n.adj).adj))
})))
}