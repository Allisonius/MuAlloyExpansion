module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv6[] {
(all x: (one Node) {
(Node in (one ((x.(*adj)) + (x.(~(^adj))))))
})
}