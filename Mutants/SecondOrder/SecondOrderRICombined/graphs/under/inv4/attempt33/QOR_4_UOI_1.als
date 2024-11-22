module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(no n: (one Node) {
(n in (lone (Node.(*adj))))
})
}