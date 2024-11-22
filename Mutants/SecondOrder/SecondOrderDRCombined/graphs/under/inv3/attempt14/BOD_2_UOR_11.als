module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(all v: (one Node) {
(lone (v.adj))
})
}