module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(no n: (one Node) {
((n in (Node.adj)) || (n != (adj.Node)))
})
}