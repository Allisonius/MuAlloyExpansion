module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(lone disj a,b: (one Node) {
(a in (b.(^adj)))
})
}