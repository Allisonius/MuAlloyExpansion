module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(one n: (one Node) {
(n in (Node.adj))
})
}