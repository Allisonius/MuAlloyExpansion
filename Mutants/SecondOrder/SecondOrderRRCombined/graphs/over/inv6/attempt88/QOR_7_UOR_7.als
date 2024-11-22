module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some x,y: (set Node) {
(some ((x.(^adj)) & (y.(^adj))))
})
}