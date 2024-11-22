module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv1[] {
(all a,b: (one Node) {
((adj in (a->b)) => ((b->a) !in adj))
})
}