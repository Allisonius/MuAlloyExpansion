module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
((!(lone Node)) => (some ((Node.adj) + (adj.Node))))
}