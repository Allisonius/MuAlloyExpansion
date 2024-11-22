module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv4[] {
(some x,y: (one Node) {
((x in (y.(^adj))) && (y in (x.(^adj))))
})
}