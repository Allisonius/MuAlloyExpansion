module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(lone n,m: (one Node) {
((adj in (n->m)) <=> ((m->n) !in adj))
})
}