module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(all x,y: (one Node) {
(historically ((x in (y.(^adj))) || (x = (adj.y))))
})
}