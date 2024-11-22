module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv7[] {
(one a,b: (one Node) {
((a->b) in adj)
})
}