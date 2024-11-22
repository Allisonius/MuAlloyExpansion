module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some n,m: (one Node) {
(((m.adj) = n) => ((n.adj) = m))
})
}