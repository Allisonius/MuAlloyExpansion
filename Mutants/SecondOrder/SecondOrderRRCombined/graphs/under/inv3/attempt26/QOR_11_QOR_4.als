module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(no n1: (one Node) {
(all n2: (one Node) {
(((n1->n2) in adj) => ((n2->n1) !in adj))
})
})
}