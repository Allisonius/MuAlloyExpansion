module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv7[] {
(all x,y: (one Node) {
(after ((x in (y.(^adj))) || (x in (adj.y))))
})
}