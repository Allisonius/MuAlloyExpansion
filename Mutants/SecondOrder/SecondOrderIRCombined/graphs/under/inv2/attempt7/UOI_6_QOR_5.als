module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(lone x,y: (one Node) {
((after (((x->y) in adj) && ((y->x) in adj))) => (y = x))
})
}