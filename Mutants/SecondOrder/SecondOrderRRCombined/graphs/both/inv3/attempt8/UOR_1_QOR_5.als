module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv3[] {
(no a: (one Node) {
((a->a) in adj)
})
}