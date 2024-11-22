module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some n,x: (one Node) {
(some n2: (some Node) {
(n in ((n2.(^adj)) + ((~(~adj)).x)))
})
})
}