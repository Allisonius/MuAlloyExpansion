module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv3[] {
(some x: (one Node) {
(x !in (x.adj))
})
}