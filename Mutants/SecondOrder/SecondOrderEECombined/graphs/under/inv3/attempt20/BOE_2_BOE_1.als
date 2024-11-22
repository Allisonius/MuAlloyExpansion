module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(all x,y: (one Node) {
(((^(y->x)) !in adj) => (adj in (^(x->y))))
})
}