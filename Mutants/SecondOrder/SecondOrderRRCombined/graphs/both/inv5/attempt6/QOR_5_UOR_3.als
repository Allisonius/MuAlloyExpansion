module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv5[] {
(lone n: (one Node) {
((n->n) in adj)
})
}