module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(all n,n1: (one Node) {
(((adj in (n->n1)) && (adj in (n1->n))) <=> (n1 = n))
})
}