module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(all disj n,n1: (one Node) {
(lone ((n1.adj).(~adj)))
})
}