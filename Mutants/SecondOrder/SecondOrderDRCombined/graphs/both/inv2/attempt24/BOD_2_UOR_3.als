module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv2[] {
(all n: (one Node) {
((n->n) !in adj)
})
}