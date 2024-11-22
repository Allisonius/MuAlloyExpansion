module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(no x,y: (one Node) {
((x in y) || (x in (adj.y)) || (x = y))
})
}