module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv2[] {
(some n: (set Node) {
(no (adj.n))
})
}