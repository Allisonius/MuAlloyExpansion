module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(all n,n1: (one Node) {
((historically (((n->n1) in adj) && (adj in (n1->n)))) => (n = n1))
})
}