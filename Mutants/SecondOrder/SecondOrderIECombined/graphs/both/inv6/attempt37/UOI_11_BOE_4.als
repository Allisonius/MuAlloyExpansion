module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all x,y: (one Node) {
(((x->y) in adj) => (eventually (((y->x) !in adj) && ((((x.(^adj)) + x) + ((^adj).x)) in Node))))
})
}