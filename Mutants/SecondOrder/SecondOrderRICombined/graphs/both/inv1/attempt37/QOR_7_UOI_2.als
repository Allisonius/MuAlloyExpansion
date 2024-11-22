module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some n,m: (one Node) {
(((n.(*adj)) = m) => ((m.adj) = m))
})
}