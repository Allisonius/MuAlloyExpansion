module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv5[] {
(all a: (one Node) {
((~(a->a)) in adj)
})
}