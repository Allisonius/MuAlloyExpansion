module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv2[] {
(all n,m: (one Node) {
((adj in (n->m)) <=> ((m->n) !in adj))
})
}