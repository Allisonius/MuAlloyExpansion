module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(some n,m: (one Node) {
(m in (n.adj))
})
}