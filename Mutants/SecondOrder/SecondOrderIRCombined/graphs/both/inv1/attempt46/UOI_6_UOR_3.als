module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv1[] {
(all n: (one Node) {
(after ((n in (Node.adj)) || (n in (adj.Node))))
})
}