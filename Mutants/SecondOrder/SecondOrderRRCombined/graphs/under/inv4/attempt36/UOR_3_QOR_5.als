module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv4[] {
(lone x: (one Node) {
(Node in (x.(^adj)))
})
}