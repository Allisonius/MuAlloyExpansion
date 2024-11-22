module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
(some a,b: (one Node) {
(((a.(^adj)) + (b.(^adj))) = Node)
})
}