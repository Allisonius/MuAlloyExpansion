module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
((lone adj) => (Node in (lone ((Node.adj) + (adj.Node)))))
}