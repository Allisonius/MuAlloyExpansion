module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(all x,y: (one Node) {
((y in (x.(^adj))) || (y in (x.adj)))
})
}