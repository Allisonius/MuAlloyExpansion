module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(no x,y: (one Node) {
(some ((x.(*adj)) + (y.(*adj))))
})
}