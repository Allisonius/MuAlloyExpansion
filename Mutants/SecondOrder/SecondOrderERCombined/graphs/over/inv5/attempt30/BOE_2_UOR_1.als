module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv5[] {
(all x,y,z: (one Node) {
((adj in (x->y)) => (!((y->x) in adj)))
})
}