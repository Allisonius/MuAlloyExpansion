module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv7[] {
(some x: (one Node) {
(Node in (x.(^adj)))
})
}