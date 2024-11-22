module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(all x,y: (one Node) {
(before ((x in (y.(^adj))) || (x in (adj.y))))
})
}