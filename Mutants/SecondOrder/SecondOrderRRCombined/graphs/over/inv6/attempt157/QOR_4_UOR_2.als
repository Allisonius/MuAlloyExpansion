module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(no n: (one Node) {
(Node in (((n + (n.adj)) + (adj.n)).(*adj)))
})
}