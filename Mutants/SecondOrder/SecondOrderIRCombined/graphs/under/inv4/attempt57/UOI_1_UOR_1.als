module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(all disj n1,n2: (one Node) {
(n1 in (lone (n2.(*adj))))
})
}