module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(one n1: (one Node) {
(no n2: (one Node) {
(n2 !in (n1.adj))
})
})
}