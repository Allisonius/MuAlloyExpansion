module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all disj n,n1: (one Node) {
(always ((n1 in (n.adj)) && (n !in (n1.adj))))
})
}