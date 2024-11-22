module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(all x,y: (one Node) {
(eventually (((x->y) in adj) || ((y->x) in adj)))
})
}