module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv5[] {
(all x,y,z: (one Node) {
((adj in (x->y)) => (!(adj in (y->x))))
})
}