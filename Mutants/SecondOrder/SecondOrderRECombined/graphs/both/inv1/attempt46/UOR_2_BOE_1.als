module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv1[] {
(all n: (one Node) {
(((Node.adj) in n) || (n in (adj.Node)))
})
}