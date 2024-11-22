module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(all x,y: (one Node) {
((before ((x in y) || (x in (y.adj)))) && ((y in (x.(^adj))) || (y in (x.adj))))
})
}