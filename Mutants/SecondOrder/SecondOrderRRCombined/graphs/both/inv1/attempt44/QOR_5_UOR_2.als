module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv1[] {
(lone a,b: (one Node) {
(((a->b) in adj) => ((b->a) !in adj))
})
}