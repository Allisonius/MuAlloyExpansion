module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(lone a,b: (one Node) {
(a in (b.(^adj)))
})
}