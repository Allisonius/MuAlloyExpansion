module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv3[] {
(lone n: (one Node) {
(no (n & (n.(*adj))))
})
}