module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(no n2: (one Node) {
(all n1: (one Node) {
(n2 !in (n1.(^adj)))
})
})
}





