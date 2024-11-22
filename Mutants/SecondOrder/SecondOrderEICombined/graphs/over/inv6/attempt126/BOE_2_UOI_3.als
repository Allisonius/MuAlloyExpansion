module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all a,b: (one Node) {
(once (((a->b) in adj) && (adj in (b->a))))
})
}