module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(some n1: (one Node) {
(some n2: (set Node) {
((n2 in (n1.adj)) => (n1 !in (n2.adj)))
})
})
}