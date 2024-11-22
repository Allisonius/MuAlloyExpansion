module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv6[] {
((!(one Node)) => (Node in ((Node.adj) + (adj.Node))))
}