module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
((all disj n1,n2: (one Node) {
(((n1.adj) in n2) => ((n2.adj) in n1))
}) && (all n: (one Node) {
(n in ((n.adj).adj))
}))
}