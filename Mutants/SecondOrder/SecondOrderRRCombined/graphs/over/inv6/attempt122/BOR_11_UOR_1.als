module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
(all x: (one Node) {
(Node = ((x.(*adj)) + ((*(~adj)).x)))
})
}