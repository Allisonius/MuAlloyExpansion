module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(one x,y: (one Node) {
(x in (((^adj).y) & x))
})
}