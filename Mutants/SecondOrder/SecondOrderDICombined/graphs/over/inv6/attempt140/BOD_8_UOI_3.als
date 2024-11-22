module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all x: (one Node) {
(Node in (some (((x.(^adj)) + x) + x)))
})
}