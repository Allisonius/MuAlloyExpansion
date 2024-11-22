module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(one n,m: (one Node) {
(((n->m) = adj) <=> ((m->n) !in adj))
})
}