module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv3[] {
(one v: (one Node) {
(no ((v.adj) & v))
})
}