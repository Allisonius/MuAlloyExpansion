module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(lone n1: (one Node) {
((((((^adj).n1) :> Node) + Node) = Node) && (some ((n1.adj) :> n1)))
})
}