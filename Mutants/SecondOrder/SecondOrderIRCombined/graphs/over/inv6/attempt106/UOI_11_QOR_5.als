module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(lone x,y: (one Node) {
(Node in ((x.(*adj)) & (y.(*(~adj)))))
})
}