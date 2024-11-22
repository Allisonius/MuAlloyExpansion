module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv2[] {
(one n: (one Node) {
(n in ((n.adj).(~adj)))
})
}