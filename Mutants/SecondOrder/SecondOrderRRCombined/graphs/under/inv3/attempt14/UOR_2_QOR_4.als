module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv3[] {
(no v: (one Node) {
(no ((v.adj) & v))
})
}