module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(one x,y: (one Node) {
((always (((x->y) in adj) && ((y->x) in adj))) => (y = x))
})
}