module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv4[] {
(all a,b: (one Node) {
(a in (one (b.(^adj))))
})
}