module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(one x: (one Node) {
(((x.(~adj)) - x) = (Node - x))
})
}