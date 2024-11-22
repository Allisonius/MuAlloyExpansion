module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some x: (some Node) {
(Node in ((x.(*adj)) + ((*adj).x)))
})
}