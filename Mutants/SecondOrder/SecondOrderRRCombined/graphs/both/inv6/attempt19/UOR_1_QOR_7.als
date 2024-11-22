module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
(some x,y: (one Node) {
(((^adj).x) in ((^adj).y))
})
}