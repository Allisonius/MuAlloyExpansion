module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(some x,y: (lone Node) {
(x in (y.(^adj)))
})
}