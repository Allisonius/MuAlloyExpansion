module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(all n,n1: (one Node) {
(((adj in (^(n->n1))) && ((n1->n) in adj)) <=> (n1 = n))
})
}