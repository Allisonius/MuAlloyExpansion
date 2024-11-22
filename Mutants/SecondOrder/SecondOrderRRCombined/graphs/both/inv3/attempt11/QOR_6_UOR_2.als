module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv3[] {
(lone a,b: (one Node) {
((a->a) in adj)
})
}