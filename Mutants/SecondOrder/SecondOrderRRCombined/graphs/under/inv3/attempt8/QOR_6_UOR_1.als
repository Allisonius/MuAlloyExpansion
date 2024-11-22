module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv3[] {
(one x: (one Node) {
(x !in (x.adj))
})
}