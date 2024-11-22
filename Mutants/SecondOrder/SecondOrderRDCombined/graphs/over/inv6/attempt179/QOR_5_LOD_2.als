module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(lone disj n,n1: (one Node) {
(n1 in (n.(^adj)))
})
}