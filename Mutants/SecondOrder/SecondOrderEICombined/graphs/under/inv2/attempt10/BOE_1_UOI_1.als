module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(all n,n1: (one Node) {
((n1 = n) => (before (((n->n1) in adj) && ((n1->n) in adj))))
})
}