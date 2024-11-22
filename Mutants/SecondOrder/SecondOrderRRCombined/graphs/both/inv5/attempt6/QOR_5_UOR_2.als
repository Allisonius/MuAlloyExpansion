module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv5[] {
(lone n: (one Node) {
((n->n) in adj)
})
}