module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(some n: (one Node) {
(no ((n.adj).(*adj)))
})
}