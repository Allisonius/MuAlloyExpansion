module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(all n1: (one Node) {
((((((^adj).n1) :> Node) + Node) = Node) && (some ((n1.adj) :> n1)))
})
}