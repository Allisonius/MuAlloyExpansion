module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv1[] {
((lone (Node.adj)) => (some (adj.Node)))
}