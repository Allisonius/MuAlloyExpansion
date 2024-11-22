module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(all x,y: (one Node) {
(eventually ((x in y) || (x in (adj.y))))
})
}