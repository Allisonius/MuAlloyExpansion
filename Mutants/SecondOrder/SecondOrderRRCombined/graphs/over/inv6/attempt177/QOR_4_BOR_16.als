module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(no x,y: (one Node) {
((x in (y.(^adj))) || (x != (adj.y)) || (x = y))
})
}