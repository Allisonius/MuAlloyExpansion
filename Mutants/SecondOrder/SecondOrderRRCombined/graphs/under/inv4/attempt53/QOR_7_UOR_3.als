module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv4[] {
(some disj n1,n2: (one Node) {
(n2 in (n1.(^adj)))
})
}