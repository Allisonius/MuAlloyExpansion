module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all x,y: (one Node) {
(((y.(^adj)) in x) && (x in (adj.y)) && (x = y))
})
}