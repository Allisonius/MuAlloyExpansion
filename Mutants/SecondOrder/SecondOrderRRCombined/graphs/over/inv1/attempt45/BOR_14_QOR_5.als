module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
((no disj n1,n2: (one Node) {
((n2 != (n1.adj)) => (n1 in (n2.adj)))
}) && (all n: (one Node) {
(n in ((n.adj).adj))
}))
}