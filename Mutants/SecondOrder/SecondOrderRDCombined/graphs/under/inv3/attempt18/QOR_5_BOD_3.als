module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv3[] {
(lone x,y: (one Node) {
((^(y->x)) !in adj)
})
}