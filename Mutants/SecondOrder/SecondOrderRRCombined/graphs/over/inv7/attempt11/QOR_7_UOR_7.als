module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(some x: (set Node) {
(Node in (x.(^adj)))
})
}