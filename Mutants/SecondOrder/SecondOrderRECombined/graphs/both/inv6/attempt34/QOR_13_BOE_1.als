module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n,x: (one Node) {
(lone n2: (one Node) {
(((n2.(^adj)) + ((~(~adj)).x)) in n)
})
})
}