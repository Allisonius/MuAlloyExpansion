module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(lone x,y: (one Node) {
(((^adj).x) in ((^adj).y))
})
}