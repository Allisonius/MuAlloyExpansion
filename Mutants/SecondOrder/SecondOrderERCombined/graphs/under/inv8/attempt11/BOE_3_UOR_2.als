module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv8[] {
(all n,n2: (one Node) {
(some n1: (one Node) {
((((n->n1) in adj) && (adj in (n1->n2))) => ((n->n2) in adj))
})
})
}