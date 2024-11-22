module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(one a,b: (one Node) {
(b in (a.(^adj)))
})
}