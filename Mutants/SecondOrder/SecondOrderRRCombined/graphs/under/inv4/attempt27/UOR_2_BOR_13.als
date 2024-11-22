module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv4[] {
(all a,b: (one Node) {
(a !in (b.(^adj)))
})
}