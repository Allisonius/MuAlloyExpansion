module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(once ((one adj) && (Node in ((Node.adj) + (adj.Node)))))
}