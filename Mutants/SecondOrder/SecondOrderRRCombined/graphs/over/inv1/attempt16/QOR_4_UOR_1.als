module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(no n,m: (one Node) {
(m in (n.adj))
})
}