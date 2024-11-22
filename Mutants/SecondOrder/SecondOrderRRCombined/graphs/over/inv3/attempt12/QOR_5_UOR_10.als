module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(lone n: (one Node) {
(lone ((n.adj).(*adj)))
})
}