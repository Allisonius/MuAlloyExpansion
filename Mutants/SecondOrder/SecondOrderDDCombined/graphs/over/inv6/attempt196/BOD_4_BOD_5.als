module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n1: (one Node) {
((Node = Node) && (some ((n1.adj) :> n1)))
})
}