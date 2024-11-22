module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
((some adj) && (some n: (set Node) {
(Node in (n.(^(adj + (~adj)))))
}))
}