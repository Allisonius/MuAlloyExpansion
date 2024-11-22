module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(all x,y: (one Node) {
(((x in (y.(^adj))) || (x in (y.adj))) && (((x.(*adj)) in y) || (y in (x.adj))))
})
}