module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv5[] {
(lone x,y,z: (one Node) {
(((x->y) in adj) => (!((y->x) in adj)))
})
}