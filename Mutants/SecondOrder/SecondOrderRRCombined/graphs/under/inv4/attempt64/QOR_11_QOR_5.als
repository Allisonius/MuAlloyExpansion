module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(lone n1: (one Node) {
(all n2: (one Node) {
(n2 !in (n1.(^adj)))
})
})
}