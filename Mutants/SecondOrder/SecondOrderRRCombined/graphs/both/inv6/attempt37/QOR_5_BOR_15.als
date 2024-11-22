module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(lone x,y: (one Node) {
(((x->y) in adj) => (((y->x) = adj) && (Node in (((x.(^adj)) + x) + ((^adj).x)))))
})
}