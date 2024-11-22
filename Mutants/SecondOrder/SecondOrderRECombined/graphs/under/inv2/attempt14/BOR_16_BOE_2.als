module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(all disj n,n1: (one Node) {
(((adj in (n->n1)) && ((n1->n) = adj)) => (n1 = n))
})
}