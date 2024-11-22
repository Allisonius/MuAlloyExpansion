module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(some x: (set Node) {
(x !in (x.adj))
})
}