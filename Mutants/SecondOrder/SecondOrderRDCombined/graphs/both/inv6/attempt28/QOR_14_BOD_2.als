module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n: (one Node) {
(some a: (one n) {
(n in (a.adj))
})
})
}