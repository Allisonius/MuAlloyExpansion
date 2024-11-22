module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
((some Node) => (some (adj.Node)))
}