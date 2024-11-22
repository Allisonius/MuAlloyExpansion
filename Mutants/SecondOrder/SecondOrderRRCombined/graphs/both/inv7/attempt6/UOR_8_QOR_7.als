module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(some n1: (set Node) {
(n1 in (n1.adj))
})
}