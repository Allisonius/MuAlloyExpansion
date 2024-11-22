module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(all x: (one Node) {
(after ((x in (x.(^adj))) || (x in (adj.x))))
})
}