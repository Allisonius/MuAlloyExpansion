module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all x,y: (one Node) {
((((y->x) !in adj) && (Node in ((x + x) + ((^adj).x)))) => ((x->y) in adj))
})
}