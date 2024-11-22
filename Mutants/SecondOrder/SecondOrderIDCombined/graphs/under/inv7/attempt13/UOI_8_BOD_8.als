module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(all x,y: (one Node) {
((x in (one (y.(^adj)))) || (x in y) || (x = y))
})
}