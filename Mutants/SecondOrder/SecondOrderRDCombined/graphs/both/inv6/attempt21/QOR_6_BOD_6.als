module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(one x,y: (one Node) {
(((^adj).x) in (y & x))
})
}