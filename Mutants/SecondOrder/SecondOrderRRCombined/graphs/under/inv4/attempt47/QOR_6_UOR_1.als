module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(one disj x,y: (one Node) {
(x in (y.(^adj)))
})
}