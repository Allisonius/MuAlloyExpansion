module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
((some adj) && (((Node.adj) + (adj.Node)) in Node))
}