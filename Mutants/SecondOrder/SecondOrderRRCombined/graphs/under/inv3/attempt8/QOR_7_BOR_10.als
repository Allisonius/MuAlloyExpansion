module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(some x: (one Node) {
(x = (x.adj))
})
}