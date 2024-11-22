module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(some n1: (one Node) {
(some n2: (lone ((n1.adj).adj)) {
(n2 in (n1.adj))
})
})
}