module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(all n1: (one Node) {
(Node in (adj.n1))
})
}