module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
(some x: (one Node) {
(Node in ((x.(*adj)) + (x.(*(~adj)))))
})
}