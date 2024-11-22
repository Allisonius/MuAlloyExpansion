module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv2[] {
(all n,m: (one Node) {
(((n->m) in (*adj)) <=> ((m->n) !in adj))
})
}