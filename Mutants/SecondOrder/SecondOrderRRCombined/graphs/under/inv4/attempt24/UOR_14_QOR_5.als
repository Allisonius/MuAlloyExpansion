module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(lone n: (one Node) {
(some (n.(*adj)))
})
}