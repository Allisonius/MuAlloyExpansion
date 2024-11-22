module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv4[] {
(all disj n,m: (one Node) {
(adj in (n->m))
})
}