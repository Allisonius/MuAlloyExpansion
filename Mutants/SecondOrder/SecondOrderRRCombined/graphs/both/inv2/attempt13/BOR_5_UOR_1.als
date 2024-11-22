module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv2[] {
((Node.adj) in (adj.Node))
}