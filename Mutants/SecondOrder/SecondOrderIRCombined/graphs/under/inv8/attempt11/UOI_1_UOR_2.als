module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv8[] {
(all n,n2: (one Node) {
(some n1: (one Node) {
((before (((n->n1) in adj) && ((n1->n2) in adj))) => ((n->n2) in adj))
})
})
}