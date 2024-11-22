module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv4[] {
(some n: (one Node) {
((n.adj) = (Node - n))
})
}