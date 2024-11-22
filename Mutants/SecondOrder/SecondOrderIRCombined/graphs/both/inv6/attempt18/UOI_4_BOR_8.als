module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(always ((some adj) && (Node != ((Node.adj) + (adj.Node)))))
}