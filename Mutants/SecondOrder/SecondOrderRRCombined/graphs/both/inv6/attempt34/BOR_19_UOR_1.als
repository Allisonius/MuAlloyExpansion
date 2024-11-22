module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
(all n,x: (one Node) {
(some n2: (one Node) {
(n != ((n2.(^adj)) + ((~(~adj)).x)))
})
})
}