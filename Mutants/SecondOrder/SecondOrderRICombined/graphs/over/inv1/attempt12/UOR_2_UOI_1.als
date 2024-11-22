module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv1[] {
((~((Node.adj)->(adj.Node))) in adj)
}