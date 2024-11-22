module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv3[] {
(lone n1: (one Node) {
(some n2: (one Node) {
(((n1->n2) in adj) => ((n2->n1) !in adj))
})
})
}