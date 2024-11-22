module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(some n1: (one Node) {
(some n2: (one Node) {
((adj in (n1->n2)) => ((n2->n1) !in adj))
})
})
}