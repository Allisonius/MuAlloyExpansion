module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv3[] {
(lone x,y: (one Node) {
(((^(x->y)) in adj) => ((y->x) !in adj))
})
}