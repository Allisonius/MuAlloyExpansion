module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(lone x,y: (one Node) {
((((x->y) in adj) && ((*(y->x)) in adj)) => (y = x))
})
}