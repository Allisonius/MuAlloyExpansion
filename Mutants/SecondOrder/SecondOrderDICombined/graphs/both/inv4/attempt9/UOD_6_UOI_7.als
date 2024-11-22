module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(all a: (one Node) {
((a in (lone (a.(^adj)))) && ((a->a) in adj))
})
}