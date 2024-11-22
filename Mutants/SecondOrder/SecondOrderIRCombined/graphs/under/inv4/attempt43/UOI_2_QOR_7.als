module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(some n: (one Node) {
((Node - n) in (one (n.adj)))
})
}