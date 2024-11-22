module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv7[] {
(all x: (one Node) {
(Node in (lone (x.(^adj))))
})
}