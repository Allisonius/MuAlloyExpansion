module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(all a,b: (one Node) {
(always (((a->b) in adj) && ((b->a) in adj)))
})
}