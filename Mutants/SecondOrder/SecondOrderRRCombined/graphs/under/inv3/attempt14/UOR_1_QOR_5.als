module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv3[] {
(lone v: (one Node) {
(no ((v.adj) & v))
})
}