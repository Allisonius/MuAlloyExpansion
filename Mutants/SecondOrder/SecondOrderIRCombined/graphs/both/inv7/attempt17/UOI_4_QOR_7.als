module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(some x,y: (one Node) {
(always ((x in (y.(^adj))) || (x in (adj.y))))
})
}