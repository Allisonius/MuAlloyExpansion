module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all x: (one Node) {
(some (Node & ((x.(*adj)) + ((*adj).x))))
})
}





