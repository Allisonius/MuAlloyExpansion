module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some n: (some Node) {
(lone (n & ((n.adj).(~adj))))
})
}