module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
((lone (Node.adj)) => (lone (adj.Node)))
}