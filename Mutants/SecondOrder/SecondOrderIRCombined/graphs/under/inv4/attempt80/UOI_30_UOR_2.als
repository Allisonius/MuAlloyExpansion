module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv4[] {
(all x,y: (one Node) {
(((x in (y.(^adj))) || (x in (y.adj))) && (always ((y in (x.(^adj))) || (y in (x.adj)))))
})
}