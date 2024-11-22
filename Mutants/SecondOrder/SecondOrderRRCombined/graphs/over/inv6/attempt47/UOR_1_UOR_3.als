module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv6[] {
(all x,y: (one Node) {
(some (((^adj).y) & x))
})
}