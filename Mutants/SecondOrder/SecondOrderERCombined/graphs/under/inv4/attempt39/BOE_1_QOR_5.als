module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(lone disj n,m: (one Node) {
(adj in (n->m))
})
}