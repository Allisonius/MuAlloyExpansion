module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(lone disj x,y: (one Node) {
(x in (y.(^adj)))
})
}