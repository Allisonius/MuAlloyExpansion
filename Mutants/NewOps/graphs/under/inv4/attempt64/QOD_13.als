module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(all n1: (one Node) {
(((Node)) !in (n1.(^adj)))
})
}





