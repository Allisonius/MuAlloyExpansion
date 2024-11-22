module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(some n: (lone Node) {
(n != (n.adj))
})
}