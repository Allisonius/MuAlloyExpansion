module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv1[] {
(lone a,b: (one Node) {
(((a->b) in adj) => ((b->a) !in adj))
})
}