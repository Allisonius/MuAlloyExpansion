module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv6[] {
((some adj) => (Node in (some ((Node.adj) + (adj.Node)))))
}