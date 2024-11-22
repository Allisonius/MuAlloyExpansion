module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all x,y: (one Node) {
(once ((x in (y.(^adj))) || (x in (adj.y))))
})
}