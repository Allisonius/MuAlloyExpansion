module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
(all x,y: (one Node) {
(((x->y) in adj) => (after (((y->x) !in adj) && (Node in ((x.(^adj)) + x)))))
})
}