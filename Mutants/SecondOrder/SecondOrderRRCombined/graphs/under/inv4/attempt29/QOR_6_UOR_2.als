module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv4[] {
(one x,y: (one Node) {
(x in (y.(^adj)))
})
}