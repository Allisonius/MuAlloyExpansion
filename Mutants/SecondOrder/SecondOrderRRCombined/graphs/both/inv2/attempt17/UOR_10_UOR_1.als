module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv2[] {
(some n: (some Node) {
(no (adj.n))
})
}