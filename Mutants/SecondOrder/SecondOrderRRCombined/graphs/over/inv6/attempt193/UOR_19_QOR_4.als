module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(no e1: (one Node) {
(Node in (((e1.(*adj)) + ((^adj).e1)) + ((e1.(~(*adj))) + ((~(*adj)).e1))))
})
}