module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(no a,b: (one Node) {
((^(a->a)) in adj)
})
}