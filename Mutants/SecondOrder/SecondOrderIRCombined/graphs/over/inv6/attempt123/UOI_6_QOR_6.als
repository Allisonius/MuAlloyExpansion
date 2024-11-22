module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(one x,y: (one Node) {
(after (((x->y) in adj) || ((y->x) in adj)))
})
}