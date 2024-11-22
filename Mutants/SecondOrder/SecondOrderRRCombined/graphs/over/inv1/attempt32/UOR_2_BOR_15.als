module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv1[] {
(all disj n,n1: (one Node) {
((n1 in (n.adj)) && (n = (n1.adj)))
})
}