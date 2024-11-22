module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv8[] {
(all n1: (one Node) {
(some n2: (one Node) {
((n2 in (n1.adj)) => (n1 in (one (n2.adj))))
})
})
}