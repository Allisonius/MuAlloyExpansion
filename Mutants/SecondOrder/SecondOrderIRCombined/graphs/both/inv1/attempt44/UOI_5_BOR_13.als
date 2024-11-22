module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all a,b: (one Node) {
(((a->b) != (*adj)) => ((b->a) !in adj))
})
}