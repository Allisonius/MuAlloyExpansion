module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(some n: (lone Node) {
(n in (Node.adj))
})
}