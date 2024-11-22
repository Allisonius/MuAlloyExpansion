module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv2[] {
(all n,n1: (one Node) {
(((n->n1) in (^adj)) <=> ((n1->n) !in adj))
})
}