module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv4[] {
(Node in (some ((Node.adj) + (adj.Node))))
}