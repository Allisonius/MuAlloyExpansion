module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some n: (some Node) {
(one ((n.adj) & (n.(~adj))))
})
}