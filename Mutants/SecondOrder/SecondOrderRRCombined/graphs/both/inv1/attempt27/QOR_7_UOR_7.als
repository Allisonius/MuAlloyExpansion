module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some n: (set Node) {
(Node in (n.(^adj)))
})
}