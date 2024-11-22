module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
((all disj n1,n2: (one Node) {
((n2 in (n1.adj)) => (n1 in (n2.adj)))
}) && (some n: (some Node) {
(n in ((n.adj).adj))
}))
}