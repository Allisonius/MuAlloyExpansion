module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(all a,b: (one Node) {
(a in (lone (b.(^adj))))
})
}