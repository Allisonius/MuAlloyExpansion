module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(lone n1: (one Node) {
(one n2: (one Node) {
(n2 !in (n1.(^adj)))
})
})
}