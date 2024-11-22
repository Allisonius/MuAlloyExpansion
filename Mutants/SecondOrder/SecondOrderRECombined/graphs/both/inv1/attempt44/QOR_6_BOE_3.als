module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(one a,b: (one Node) {
(((a->b) in adj) => (adj !in (b->a)))
})
}