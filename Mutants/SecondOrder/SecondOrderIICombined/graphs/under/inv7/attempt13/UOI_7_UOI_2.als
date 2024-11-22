module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(all x,y: (one Node) {
((x in (lone (y.(^(~adj))))) || (x in (adj.y)) || (x = y))
})
}