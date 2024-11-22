module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(some n: (one Node) {
(n in (lone (adj.((n.adj).adj))))
})
}