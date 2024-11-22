module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(some n: (one Node) {
(some (n & ((n.adj).(~adj))))
})
}