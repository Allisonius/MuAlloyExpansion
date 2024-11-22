module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(one n,n1: (one Node) {
((((n->n1) in adj) && ((n1->n) in adj)) => (n = n1))
})
}