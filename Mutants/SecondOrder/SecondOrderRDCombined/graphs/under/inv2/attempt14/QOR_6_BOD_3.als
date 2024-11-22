module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(one disj n,n1: (one Node) {
(n1 = n)
})
}