module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some n: (some Node) {
(Node in (n.(^adj)))
})
}