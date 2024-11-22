module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(inv1[])
}
pred inv1[] {
(adj in (~adj))
}