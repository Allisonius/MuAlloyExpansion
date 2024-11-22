module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(some x,y: (one Node) {
(((y.(^adj)) in x) && (y in (x.(^adj))))
})
}