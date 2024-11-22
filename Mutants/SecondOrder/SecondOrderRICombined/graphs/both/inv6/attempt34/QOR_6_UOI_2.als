module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(one n,x: (one Node) {
(some n2: (one Node) {
(n in (one ((n2.(^adj)) + ((~(~adj)).x))))
})
})
}