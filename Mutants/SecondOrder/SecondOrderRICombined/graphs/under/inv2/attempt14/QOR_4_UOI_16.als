module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(no disj n,n1: (one Node) {
((((n->n1) in adj) && ((n1->n) in (~adj))) => (n1 = n))
})
}