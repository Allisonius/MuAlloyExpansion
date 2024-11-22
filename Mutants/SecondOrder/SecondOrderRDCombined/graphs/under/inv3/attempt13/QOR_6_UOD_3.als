module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(one p: (one Node) {
(p in (p.adj))
})
}