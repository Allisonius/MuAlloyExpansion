module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv4[] {
(all n1: (one Node) {
(no n2: (one Node) {
(n2 = (n1.(^adj)))
})
})
}