module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(lone a,b: (one Node) {
(adj in (b->a))
})
}