module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(some x: (set Node) {
(Node in (x.(^adj)))
})
}