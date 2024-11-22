module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
((some (Node.(^adj))) => (no (adj.Node)))
}