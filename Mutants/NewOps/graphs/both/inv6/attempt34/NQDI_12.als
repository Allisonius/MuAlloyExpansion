module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n,x: (one Node) {
(some n2: (one Node) {n2 != n =>  {n2 != n =>  {
(n in ((n2.(^adj)) + ((~(~adj)).x)))
}}})
})
}





