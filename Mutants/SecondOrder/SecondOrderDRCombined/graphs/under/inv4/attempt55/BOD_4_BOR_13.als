module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(all x: (one Node) {
((x - x) !in (Node - x))
})
}