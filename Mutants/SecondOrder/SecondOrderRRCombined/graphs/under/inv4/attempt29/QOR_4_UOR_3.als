module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv4[] {
(no x,y: (one Node) {
(x in (y.(^adj)))
})
}