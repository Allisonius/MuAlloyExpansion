module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv3[] {
(some a: (set Node) {
((a->a) in adj)
})
}