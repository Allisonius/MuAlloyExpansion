module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(no x: (one Node) {
((Node - x) in (x.(^adj)))
})
}