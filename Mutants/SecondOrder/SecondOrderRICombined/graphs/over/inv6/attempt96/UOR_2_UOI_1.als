module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(all n: (one Node) {
(Node in (lone ((n.(*adj)) + (n.(*adj)))))
})
}