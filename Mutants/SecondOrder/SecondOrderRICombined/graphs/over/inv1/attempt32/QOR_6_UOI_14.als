module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(one disj n,n1: (one Node) {
((n1 in (n.adj)) && (n in (one (n1.adj))))
})
}