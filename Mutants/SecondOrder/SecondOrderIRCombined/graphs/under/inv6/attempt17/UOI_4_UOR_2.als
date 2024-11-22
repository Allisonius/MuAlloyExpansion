module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(always ((lone Node) || (Node in ((Node.adj) + (adj.Node)))))
}