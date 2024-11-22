module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv3[] {
(no x: (one Node) {
(x !in (x.adj))
})
}