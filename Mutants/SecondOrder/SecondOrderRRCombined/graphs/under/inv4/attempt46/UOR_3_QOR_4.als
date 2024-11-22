module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv4[] {
(no disj a,b: (one Node) {
(a in (b.(^adj)))
})
}