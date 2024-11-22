module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(all disj n,m: (one Node) {
((n->m) in adj)
})
}