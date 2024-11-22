module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all disj n,n1: (one Node) {
((lone (n.adj)) && (n in (n1.adj)))
})
}