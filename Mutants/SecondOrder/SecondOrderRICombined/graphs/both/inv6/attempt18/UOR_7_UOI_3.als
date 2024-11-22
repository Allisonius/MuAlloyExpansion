module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(once ((no adj) && (Node in ((Node.adj) + (adj.Node)))))
}