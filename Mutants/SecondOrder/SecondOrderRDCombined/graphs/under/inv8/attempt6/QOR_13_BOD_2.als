module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all n1: (one Node) {
(lone n2: (one Node) {
(n1 in (n2.adj))
})
})
}