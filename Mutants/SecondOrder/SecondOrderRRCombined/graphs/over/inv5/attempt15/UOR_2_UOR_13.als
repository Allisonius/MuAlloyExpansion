module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv5[] {
(all n: (one Node) {
(some (n.(*adj)))
})
}