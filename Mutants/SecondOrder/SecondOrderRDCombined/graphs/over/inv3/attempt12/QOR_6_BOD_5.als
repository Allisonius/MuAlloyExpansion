module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(one n: (one Node) {
(no (adj.(*adj)))
})
}