module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(before ((lone Node) || (((Node.adj) + (adj.Node)) in Node)))
}