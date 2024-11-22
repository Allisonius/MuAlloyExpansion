module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(all x,y,z: (one Node) {
((always ((x->y) in adj)) => ((y = z) && (z = x)))
})
}