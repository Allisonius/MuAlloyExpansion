module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv6[] {
((some adj) => (Node != ((Node.adj) + (adj.Node))))
}