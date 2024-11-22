module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(no x,y: (one Node) {
(historically ((x in (y.(^adj))) || (x in (adj.y))))
})
}