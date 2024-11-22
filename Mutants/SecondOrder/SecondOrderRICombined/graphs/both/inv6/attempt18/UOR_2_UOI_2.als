module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
((some adj) && (Node in (lone ((Node.adj) + (adj.Node)))))
}