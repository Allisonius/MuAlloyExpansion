module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(historically (inv1[]))
}
pred inv1[] {
(adj in (~adj))
}