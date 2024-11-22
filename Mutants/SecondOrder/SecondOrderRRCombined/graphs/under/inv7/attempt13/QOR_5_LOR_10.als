module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(lone x,y: (one Node) {
((x in (y.(^adj))) && (x in (adj.y)) && (x = y))
})
}