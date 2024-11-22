module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv4[] {
(all a: (one Node) {
(a in (lone (a.adj)))
})
}