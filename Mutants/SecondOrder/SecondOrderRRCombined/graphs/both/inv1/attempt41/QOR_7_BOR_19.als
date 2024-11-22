module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(some n: (one Node) {
(one m: (one Node) {
((m.adj) !in n)
})
})
}