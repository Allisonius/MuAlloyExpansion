module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(some x,y: (one Node) {
(((adj in (x->y)) && ((y->x) in adj)) => (y = x))
})
}