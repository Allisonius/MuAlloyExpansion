module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(one x,y: (one Node) {
(some ((x.(^adj)) & (y.(~(^adj)))))
})
}