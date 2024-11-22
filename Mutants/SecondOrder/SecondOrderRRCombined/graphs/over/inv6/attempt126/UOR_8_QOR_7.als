module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some a,b: (set Node) {
(((a->b) in adj) && ((b->a) in adj))
})
}