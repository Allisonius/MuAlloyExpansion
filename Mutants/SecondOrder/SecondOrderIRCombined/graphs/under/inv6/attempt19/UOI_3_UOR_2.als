module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
((!(lone Node)) => (Node in (some ((Node.adj) + (adj.Node)))))
}