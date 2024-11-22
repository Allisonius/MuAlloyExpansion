module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv1[] {
(no n: (one Node) {
(no m: (one Node) {
(((m.adj) = n) => ((n.adj) = m))
})
})
}