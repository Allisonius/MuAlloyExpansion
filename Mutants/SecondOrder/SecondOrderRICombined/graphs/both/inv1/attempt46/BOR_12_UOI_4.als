module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all n: (one Node) {
(always ((n = (Node.adj)) || (n in (adj.Node))))
})
}