module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all e1: (one Node) {
(Node in (one ((((e1.(*adj)) + (e1.(~(*adj)))) + ((*(^adj)).e1)) + ((~(*adj)).e1))))
})
}