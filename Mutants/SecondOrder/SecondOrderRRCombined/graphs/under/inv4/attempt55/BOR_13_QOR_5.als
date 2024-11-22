module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(lone x: (one Node) {
(((x.adj) - x) !in (Node - x))
})
}