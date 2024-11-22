module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv1[] {
((one (Node.adj)) => (some (adj.Node)))
}