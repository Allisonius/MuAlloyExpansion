module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(some e1: (one Node) {
(Node in ((e1.(*adj)) + ((^adj).e1)))
})
}