module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(all disj n,n1: (one Node) {
((n1 in (n.adj)) && ((n1.adj) in n))
})
}