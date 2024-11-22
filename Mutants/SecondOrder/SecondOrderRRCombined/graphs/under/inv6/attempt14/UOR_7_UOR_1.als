module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
((no adj) => (Node in ((Node.adj) + (adj.Node))))
}