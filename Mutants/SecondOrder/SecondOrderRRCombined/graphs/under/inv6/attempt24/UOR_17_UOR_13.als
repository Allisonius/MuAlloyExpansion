module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n: (one Node) {
(no (n->((n.(*adj)) + (n.(*(~adj))))))
})
}