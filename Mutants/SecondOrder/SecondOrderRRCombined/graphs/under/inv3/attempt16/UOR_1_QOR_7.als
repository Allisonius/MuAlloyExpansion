module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv3[] {
(some n: (one Node) {
(Node in (n.(^adj)))
})
}