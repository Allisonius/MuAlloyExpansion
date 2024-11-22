module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(no n: (one Node) {
(some (n.adj))
})
}