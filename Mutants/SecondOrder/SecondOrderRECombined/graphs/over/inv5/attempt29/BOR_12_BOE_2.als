module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv5[] {
(all x,y: (one Node) {
(((x->y) = adj) => (!(adj in (y->x))))
})
}