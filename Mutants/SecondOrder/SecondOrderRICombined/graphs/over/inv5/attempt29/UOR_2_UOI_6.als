module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv5[] {
(all x,y: (one Node) {
(((x->y) in adj) => (!((~(y->x)) in adj)))
})
}