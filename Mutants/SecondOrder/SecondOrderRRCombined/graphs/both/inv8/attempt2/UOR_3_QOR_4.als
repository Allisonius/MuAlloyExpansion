module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv8[] {
(no n: (one Node) {
(n in (((adj.n).adj).adj))
})
}