module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(lone n: (one Node) {
(lone m: (one Node) {
((m.adj) = n)
})
})
}