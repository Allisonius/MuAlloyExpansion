module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv4[] {
(one a,b: (one Node) {
(b in (a.(^adj)))
})
}