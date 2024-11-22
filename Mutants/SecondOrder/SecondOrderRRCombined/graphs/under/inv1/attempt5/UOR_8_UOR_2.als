module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv1[] {
((some (Node.adj)) => (lone (adj.Node)))
}