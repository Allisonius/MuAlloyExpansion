module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some e1: (one Node) {
(Node in (((*adj).e1) + ((~(*adj)).e1)))
})
}