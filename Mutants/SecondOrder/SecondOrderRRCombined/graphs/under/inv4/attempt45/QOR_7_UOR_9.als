module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(some n1,n2: (some Node) {
(n1 in (n2.(^adj)))
})
}