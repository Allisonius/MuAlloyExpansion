module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(((Node.adj)->(adj.Node)) in adj)
}