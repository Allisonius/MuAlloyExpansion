module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv5[] {
(some x,y,z: (one Node) {
((adj in (x->y)) => (!((y->x) in adj)))
})
}