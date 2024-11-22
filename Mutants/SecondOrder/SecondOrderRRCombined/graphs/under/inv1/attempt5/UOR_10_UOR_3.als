module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv1[] {
((some (Node.adj)) => (no (adj.Node)))
}