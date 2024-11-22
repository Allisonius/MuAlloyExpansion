module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(one a: (one Node) {
((a in (lone (a.(^adj)))) => (a in (a.(^adj))))
})
}