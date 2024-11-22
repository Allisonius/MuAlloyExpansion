module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv3[] {
(some a,b: (lone Node) {
((a->a) in adj)
})
}