module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(some x: (one Node) {
(Node in (x.(^adj)))
})
}