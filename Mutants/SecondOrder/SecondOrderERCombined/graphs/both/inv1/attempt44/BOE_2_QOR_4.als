module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(no a,b: (one Node) {
((adj in (a->b)) => ((b->a) !in adj))
})
}