module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(some x,y: (one Node) {
((x in (y.(^adj))) || ((adj.y) in x))
})
}