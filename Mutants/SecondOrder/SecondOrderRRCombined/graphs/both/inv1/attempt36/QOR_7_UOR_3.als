module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv1[] {
(some disj n,n1: (one Node) {
(n in ((n1.adj).(~adj)))
})
}