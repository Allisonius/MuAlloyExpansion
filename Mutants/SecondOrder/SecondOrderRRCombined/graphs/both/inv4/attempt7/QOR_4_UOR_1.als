module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(no n: (one Node) {
((n.(^adj)) = (Node - n))
})
}