module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(all x,y: (one Node) {
(eventually ((x in (y.(^adj))) || (x in (adj.y)) || (x = y)))
})
}