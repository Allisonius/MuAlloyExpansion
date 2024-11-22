module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(all n,m: (one Node) {
(adj !in (m->n))
})
}