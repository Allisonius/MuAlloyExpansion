module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv1[] {
((no (Node.adj)) => (some (adj.Node)))
}