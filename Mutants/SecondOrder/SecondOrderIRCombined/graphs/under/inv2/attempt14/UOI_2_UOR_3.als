module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv2[] {
(all disj n,n1: (one Node) {
((historically (((n->n1) in adj) && ((n1->n) in adj))) => (n1 = n))
})
}