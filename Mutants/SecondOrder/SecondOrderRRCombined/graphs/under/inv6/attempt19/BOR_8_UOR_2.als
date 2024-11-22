module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
((!(lone Node)) => (Node = ((Node.adj) + (adj.Node))))
}