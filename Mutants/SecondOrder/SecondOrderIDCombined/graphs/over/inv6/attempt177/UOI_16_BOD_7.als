module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all x,y: (one Node) {
((x in (y.(^adj))) || (one (adj.y)) || (x = y))
})
}