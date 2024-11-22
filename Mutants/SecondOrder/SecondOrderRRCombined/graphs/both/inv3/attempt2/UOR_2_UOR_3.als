module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv3[] {
(Node !in (Node.adj))
}