module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv4[] {
(lone x,y: (one Node) {
(((x in (y.(^adj))) || (x in (y.adj))) && ((y in (x.(^adj))) || (y in (x.adj))))
})
}