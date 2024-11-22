module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some x,y: (some Node) {
(some ((x.(^adj)) & (y.(^adj))))
})
}