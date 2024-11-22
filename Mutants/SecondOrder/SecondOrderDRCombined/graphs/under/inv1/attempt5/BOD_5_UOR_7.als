module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
((some adj) => (one (adj.Node)))
}