module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(all disj n,n1: (one Node) {
((((n->n1) in adj) && (adj in (n1->n))) => (n1 !in n))
})
}