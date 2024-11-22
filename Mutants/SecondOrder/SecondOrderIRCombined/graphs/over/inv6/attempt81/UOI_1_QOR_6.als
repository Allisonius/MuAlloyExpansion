module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(one n1: (one Node) {
(Node in (lone ((n1.adj) + (adj.n1))))
})
}