module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(all x,y: (one Node) {
(x in (lone (y.(^adj))))
})
}