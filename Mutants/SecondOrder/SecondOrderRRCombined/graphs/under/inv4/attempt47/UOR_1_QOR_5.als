module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(lone disj x,y: (one Node) {
(x in (y.(^adj)))
})
}