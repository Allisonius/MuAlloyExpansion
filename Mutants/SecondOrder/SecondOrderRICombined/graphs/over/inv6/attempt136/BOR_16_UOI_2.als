module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all a,b: (one Node) {
(historically (((a->b) in adj) || ((b->a) != adj)))
})
}