module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(lone x,y: (one Node) {
((x in (y.(^adj))) || (x in (y.adj)))
})
}