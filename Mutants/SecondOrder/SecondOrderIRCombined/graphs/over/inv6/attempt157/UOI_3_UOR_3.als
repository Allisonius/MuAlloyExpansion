module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv6[] {
(all n: (one Node) {
(Node in (some (((n + (n.adj)) + (adj.n)).(*adj))))
})
}