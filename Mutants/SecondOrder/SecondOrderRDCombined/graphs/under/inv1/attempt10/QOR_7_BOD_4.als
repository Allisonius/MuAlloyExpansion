module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some n: (one Node) {
((no n) || (n in ((n.adj).adj)))
})
}