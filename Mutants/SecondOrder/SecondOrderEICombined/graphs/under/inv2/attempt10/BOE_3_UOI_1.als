module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(all n,n1: (one Node) {
((before (((n->n1) in adj) && (adj in (n1->n)))) => (n1 = n))
})
}