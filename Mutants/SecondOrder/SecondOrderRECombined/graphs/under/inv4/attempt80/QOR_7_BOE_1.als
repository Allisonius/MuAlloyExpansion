module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(some x,y: (one Node) {
((((y.(^adj)) in x) || (x in (y.adj))) && ((y in (x.(^adj))) || (y in (x.adj))))
})
}