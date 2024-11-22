module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(some n: (some Node) {
(some (n.(^adj)))
})
}