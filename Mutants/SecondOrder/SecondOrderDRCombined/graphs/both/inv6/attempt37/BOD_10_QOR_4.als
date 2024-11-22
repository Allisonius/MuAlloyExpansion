module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(no x,y: (one Node) {
(((x->y) in adj) => (((y->x) !in adj) && (Node in ((x + x) + ((^adj).x)))))
})
}