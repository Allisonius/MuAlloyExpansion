module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(some disj x,y: (one Node) {
(x in (y.(^adj)))
})
}