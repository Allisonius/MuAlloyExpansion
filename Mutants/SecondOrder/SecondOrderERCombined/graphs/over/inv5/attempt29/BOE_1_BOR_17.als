module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv5[] {
(all x,y: (one Node) {
((!((y->x) in adj)) => ((x->y) !in adj))
})
}