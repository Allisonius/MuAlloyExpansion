module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv3[] {
(some a,b: (one Node) {
(adj in (a->a))
})
}