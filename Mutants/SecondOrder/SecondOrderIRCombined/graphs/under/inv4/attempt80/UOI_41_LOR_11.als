module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(all x,y: (one Node) {
((x in (y.(^adj))) || (x in (y.adj)) || (y in (x.(^adj))) || (y in (lone (x.adj))))
})
}