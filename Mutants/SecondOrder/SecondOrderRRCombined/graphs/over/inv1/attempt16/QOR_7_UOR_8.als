module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some n,m: (lone Node) {
(m in (n.adj))
})
}