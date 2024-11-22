module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all n,n2: (one Node) {
(no n1: (one Node) {
(((n1->n2) in adj) => ((n->n2) in adj))
})
})
}