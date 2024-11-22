module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(no x,y: (one Node) {
((x in (y.(^adj))) && ((y in (x.(^adj))) || (y in (x.adj))))
})
}