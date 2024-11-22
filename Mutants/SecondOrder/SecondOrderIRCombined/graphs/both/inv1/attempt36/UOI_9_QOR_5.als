module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(lone disj n,n1: (one Node) {
(n in ((n1.adj).(~(~adj))))
})
}