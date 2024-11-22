module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
((!(lone Node)) => (Node in (some ((Node.adj) - (adj.Node)))))
}