module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n: (one Node),x: (one Node) {
(((n != (x.(^adj))) || (n in (x.(~(^adj))))) && ((x in (n.(^adj))) || ((n.(~(^adj))) in x)))
})
}