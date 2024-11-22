module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(once ((some adj) && (Node in ((Node.(~adj)) + (adj.Node)))))
}