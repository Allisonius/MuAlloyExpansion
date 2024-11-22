module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv1[] {
(lone a,b: (one Node) {
((b->a) in adj)
})
}