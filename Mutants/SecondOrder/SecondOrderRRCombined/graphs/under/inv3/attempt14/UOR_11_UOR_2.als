module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv3[] {
(all v: (one Node) {
(lone ((v.adj) & v))
})
}