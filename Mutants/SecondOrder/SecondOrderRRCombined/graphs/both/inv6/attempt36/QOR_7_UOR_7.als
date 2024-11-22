module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some x,y: (set Node) {
(((x->y) in adj) => (((y->x) !in adj) && (Node in ((x.(^adj)) + x))))
})
}