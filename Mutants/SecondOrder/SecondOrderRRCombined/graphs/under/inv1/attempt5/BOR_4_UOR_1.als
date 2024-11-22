module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
((some (Node.adj)) <=> (some (adj.Node)))
}