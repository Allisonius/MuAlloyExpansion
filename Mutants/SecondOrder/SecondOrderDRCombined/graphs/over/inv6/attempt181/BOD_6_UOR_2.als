module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(all n: (one Node) {
(((Node in n) && (inv1[])) || (one Node))
})
}
pred inv1[] {
(adj in (~adj))
}