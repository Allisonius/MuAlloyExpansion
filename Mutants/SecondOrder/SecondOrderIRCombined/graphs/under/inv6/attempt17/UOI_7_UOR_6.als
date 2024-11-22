module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
((some Node) || (Node in (lone ((Node.adj) + (adj.Node)))))
}