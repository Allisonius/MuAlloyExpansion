module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv1[] {
(lone n: (one Node) {
((n in (Node.adj)) || (n in (adj.Node)))
})
}