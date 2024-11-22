module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
((!(lone Node)) => (Node in (one ((Node.adj) + (adj.Node)))))
}