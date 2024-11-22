module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv3[] {
(all x,y: (one Node) {
((adj in (x->y)) => ((^(y->x)) !in adj))
})
}