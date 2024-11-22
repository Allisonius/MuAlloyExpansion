module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(all disj x,y: (one Node) {
(x != (y.(^adj)))
})
}