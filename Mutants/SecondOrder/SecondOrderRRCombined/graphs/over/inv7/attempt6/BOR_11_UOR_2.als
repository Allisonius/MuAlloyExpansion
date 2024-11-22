module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv7[] {
(all a,b: (one Node) {
((a->b) = adj)
})
}