module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(all disj n,n1: (one Node) {
(after ((n1 in (n.adj)) && (n in (n1.adj))))
})
}