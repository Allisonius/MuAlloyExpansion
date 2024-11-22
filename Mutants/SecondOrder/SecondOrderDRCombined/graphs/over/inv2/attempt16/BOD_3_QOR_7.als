module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(some n,m: (one Node) {
((m->n) !in adj)
})
}