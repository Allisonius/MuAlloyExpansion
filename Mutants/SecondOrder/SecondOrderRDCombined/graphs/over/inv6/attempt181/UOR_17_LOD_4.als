module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n: (one Node) {
((inv1[]) || (lone Node))
})
}
pred inv1[] {
(adj in (~adj))
}