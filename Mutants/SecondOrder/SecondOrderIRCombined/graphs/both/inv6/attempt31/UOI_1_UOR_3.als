module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv6[] {
(all x: (one Node) {
(before ((x in (x.(^adj))) || (x in (Node.(^adj)))))
})
}