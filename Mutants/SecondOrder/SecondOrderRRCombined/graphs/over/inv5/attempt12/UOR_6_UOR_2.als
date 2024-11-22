module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv5[] {
(some ((adj.Node) & (Node.adj)))
}