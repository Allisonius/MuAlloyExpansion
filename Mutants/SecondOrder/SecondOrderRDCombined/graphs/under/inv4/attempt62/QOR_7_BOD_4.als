module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(some x,y: (one Node) {
((x in y) && (y in (x.(^adj))))
})
}