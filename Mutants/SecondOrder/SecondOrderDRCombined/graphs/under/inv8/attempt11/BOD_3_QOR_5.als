module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(lone n,n2: (one Node) {
(some n1: (one Node) {
((n->n2) in adj)
})
})
}