module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(some x,y: (some Node) {
((((x->y) in adj) && ((y->x) in adj)) => (y = x))
})
}