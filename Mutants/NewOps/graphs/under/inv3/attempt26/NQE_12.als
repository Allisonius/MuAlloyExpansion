module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(some n2: (one Node) {
(all n1: (one Node) {
(((n1->n2) in adj) => ((n2->n1) !in adj))
})
})
}





