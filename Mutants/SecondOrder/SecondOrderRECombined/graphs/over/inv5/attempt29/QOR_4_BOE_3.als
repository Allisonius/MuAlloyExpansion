module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv5[] {
(no x,y: (one Node) {
(((x->y) in adj) => (!(adj in (y->x))))
})
}