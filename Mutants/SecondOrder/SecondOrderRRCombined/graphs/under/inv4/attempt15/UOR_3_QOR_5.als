module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv4[] {
(lone a: (one Node) {
(a in (adj.a))
})
}