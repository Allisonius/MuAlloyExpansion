module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(lone x: (one Node) {
(always ((x in (x.(^adj))) || (x in (Node.(^adj)))))
})
}