module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv2[] {
(lone n: (one Node) {
(n in ((n.adj).(~adj)))
})
}