module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv5[] {
(all x,y,z: (one Node) {
(((x->y) in adj) => (!((y->x) = adj)))
})
}