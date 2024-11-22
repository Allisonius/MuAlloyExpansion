module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(some disj n,m: (lone Node) {
((n->m) in adj)
})
}