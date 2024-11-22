module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
(some n: (one Node) {
((n.(*adj)) = Node)
})
}