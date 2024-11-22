module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(no n1: (one Node) {
(no n2: (one Node) {
(n2 !in (n1.(^adj)))
})
})
}