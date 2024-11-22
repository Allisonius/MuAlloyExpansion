module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv3[] {
(one n: (one Node) {
((n->n) !in adj)
})
}