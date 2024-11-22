module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n: (one Node) {
(all a: (one n) {
(n in (lone (a.adj)))
})
})
}