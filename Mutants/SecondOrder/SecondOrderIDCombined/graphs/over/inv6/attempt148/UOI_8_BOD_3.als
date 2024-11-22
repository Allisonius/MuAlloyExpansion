module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all x,y: (one Node) {
((x in (one y)) && (y in ((^adj).x)))
})
}