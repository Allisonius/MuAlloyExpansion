module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv4[] {
(some a: (one Node) {
(a in (adj.a))
})
}