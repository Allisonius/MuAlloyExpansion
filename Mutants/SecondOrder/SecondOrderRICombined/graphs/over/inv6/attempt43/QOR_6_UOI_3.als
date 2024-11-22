module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(one disj x,y: (one Node) {
(x in (some (y.(^adj))))
})
}