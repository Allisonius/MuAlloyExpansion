module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(some a,b: (set Node) {
(a in (b.(^adj)))
})
}