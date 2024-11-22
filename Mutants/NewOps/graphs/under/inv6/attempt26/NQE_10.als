module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some n2: (one Node) {
(all n,x: (one Node) {
(n in ((n2.(*adj)) + ((~(~adj)).x)))
})
})
}





