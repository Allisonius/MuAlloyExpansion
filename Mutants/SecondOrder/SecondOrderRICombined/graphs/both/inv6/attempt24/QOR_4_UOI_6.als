module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(no x: (one Node) {
(after ((x in (x.(^adj))) || (x in (adj.x))))
})
}