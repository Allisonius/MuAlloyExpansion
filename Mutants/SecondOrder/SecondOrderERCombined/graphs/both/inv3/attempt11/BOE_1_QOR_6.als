module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(lone a,b: (one Node) {
(adj in (a->a))
})
}