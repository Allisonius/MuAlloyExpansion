module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv1[] {
(lone n: (one Node) {
(one m: (one Node) {
((m.adj) = n)
})
})
}