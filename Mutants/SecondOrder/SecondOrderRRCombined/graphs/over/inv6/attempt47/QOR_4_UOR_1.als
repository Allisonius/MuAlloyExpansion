module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
(no x,y: (one Node) {
(some (((^adj).y) & x))
})
}