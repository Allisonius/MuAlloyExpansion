module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv7[] {
(all x,y: (one Node) {
(once ((x in (y.(^adj))) || (x in (adj.y))))
})
}