module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(all disj x,y: (one Node) {
(((^(x->y)) in adj) => ((y->x) !in adj))
})
}





