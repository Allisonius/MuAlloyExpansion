module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some x,y: (lone Node) {
(Node in ((x.(*adj)) + (y.(*adj))))
})
}