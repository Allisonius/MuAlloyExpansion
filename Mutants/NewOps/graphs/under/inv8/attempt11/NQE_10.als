module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(some n1: (one Node) {
(all n,n2: (one Node) {
((((n->n1) in adj) && ((n1->n2) in adj)) => ((n->n2) in adj))
})
})
}





