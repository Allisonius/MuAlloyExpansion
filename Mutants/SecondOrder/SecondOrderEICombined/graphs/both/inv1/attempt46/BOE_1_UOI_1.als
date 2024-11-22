module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all n: (one Node) {
(before (((Node.adj) in n) || (n in (adj.Node))))
})
}