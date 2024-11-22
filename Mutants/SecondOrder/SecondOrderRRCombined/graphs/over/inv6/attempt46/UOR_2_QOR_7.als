module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(some x,y: (one Node) {
(x in (((^adj).y) & x))
})
}