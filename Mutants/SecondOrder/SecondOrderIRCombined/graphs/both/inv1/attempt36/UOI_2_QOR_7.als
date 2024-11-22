module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some disj n,n1: (one Node) {
(n in (one ((n1.adj).(~adj))))
})
}