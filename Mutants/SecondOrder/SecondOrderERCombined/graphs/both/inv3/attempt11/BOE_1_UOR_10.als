module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(some a,b: (some Node) {
(adj in (a->a))
})
}