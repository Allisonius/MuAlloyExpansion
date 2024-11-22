module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
(all n: (one Node) {
((inv1[]) || (one Node))
})
}
pred inv1[] {
(adj in (~adj))
}