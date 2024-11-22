module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(some n,m: (set Node) {
(((n->m) in adj) <=> ((m->n) !in adj))
})
}