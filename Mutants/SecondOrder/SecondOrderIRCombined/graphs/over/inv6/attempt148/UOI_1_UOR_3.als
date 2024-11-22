module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv6[] {
(all x,y: (one Node) {
(before ((x in ((^adj).y)) && (y in ((^adj).x))))
})
}