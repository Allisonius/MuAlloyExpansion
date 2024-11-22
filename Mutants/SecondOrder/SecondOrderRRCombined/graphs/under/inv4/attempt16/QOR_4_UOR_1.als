module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(no a: (one Node) {
(a in (a.adj))
})
}