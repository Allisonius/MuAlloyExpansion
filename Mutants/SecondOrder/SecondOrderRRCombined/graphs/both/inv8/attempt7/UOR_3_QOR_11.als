module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv8[] {
(all n1: (one Node) {
(all n2: (one ((n1.adj).adj)) {
(n2 in (n1.adj))
})
})
}