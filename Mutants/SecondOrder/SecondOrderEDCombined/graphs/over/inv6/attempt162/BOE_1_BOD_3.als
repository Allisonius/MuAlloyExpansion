module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all e1: (one Node) {
(((^adj).e1) in (Node - e1))
})
}