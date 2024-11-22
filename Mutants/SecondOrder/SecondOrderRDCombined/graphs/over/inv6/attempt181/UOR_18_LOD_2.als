module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n: (one Node) {
(some Node)
})
}
pred inv1[] {
(adj in (~adj))
}