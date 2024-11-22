module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some disj x,y: (set Node) {
(x in (y.(^adj)))
})
}