module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n: (one Node) {
((Node in (some (n.(^adj)))) && (inv1[]))
})
}
pred inv1[] {
(adj in (~adj))
}