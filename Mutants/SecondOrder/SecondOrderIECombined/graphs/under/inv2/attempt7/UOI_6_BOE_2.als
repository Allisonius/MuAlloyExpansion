module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(all x,y: (one Node) {
((after ((adj in (x->y)) && ((y->x) in adj))) => (y = x))
})
}