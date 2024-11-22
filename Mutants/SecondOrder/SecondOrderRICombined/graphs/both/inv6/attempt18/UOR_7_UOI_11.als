module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
((no adj) && (Node in (one ((Node.adj) + (adj.Node)))))
}