module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(historically ((some adj) && (Node in (one ((Node.adj) + (adj.Node))))))
}