module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(lone a,b: (one Node) {
(after (((a->b) in adj) && ((b->a) in adj)))
})
}