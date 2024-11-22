module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
(one n: (one Node) {
(Node in (n.(*adj)))
})
}