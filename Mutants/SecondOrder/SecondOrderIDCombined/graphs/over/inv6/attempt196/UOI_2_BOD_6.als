module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n1: (one Node) {
(historically (((Node + ((n1.(^adj)) :> Node)) = Node) && (some ((n1.adj) :> n1))))
})
}