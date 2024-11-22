module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(some n: (one Node) {
((n in (Node.adj)) || (n in (adj.Node)))
})
}