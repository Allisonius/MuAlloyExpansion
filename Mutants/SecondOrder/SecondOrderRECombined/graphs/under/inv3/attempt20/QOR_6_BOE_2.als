module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(one x,y: (one Node) {
((adj in (^(x->y))) => ((^(y->x)) !in adj))
})
}