module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv3[] {
(all x,y,z: (one Node) {
((((x->y) in adj) && (adj in (z->y))) => ((y = z) && (z = x)))
})
}