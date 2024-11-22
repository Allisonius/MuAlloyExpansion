module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(some n1,n2: (some Node) {
(((n1->n2) in adj) => ((n2->n2) !in adj))
})
}