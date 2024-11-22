module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some a,b: (lone Node) {
(((a.(^adj)) + (b.(^adj))) = Node)
})
}