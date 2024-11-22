module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(all a: (one Node) {
((a->a) in (~adj))
})
}