module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
((one adj) && (Node in (some ((Node.adj) + (adj.Node)))))
}