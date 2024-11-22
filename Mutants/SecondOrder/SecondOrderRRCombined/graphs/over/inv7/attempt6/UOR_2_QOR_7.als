module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv7[] {
(some a,b: (one Node) {
((a->b) in adj)
})
}