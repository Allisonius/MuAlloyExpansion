module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
((lone adj) && (all n: (one Node) {
(Node in (n.(^(adj + (~(*adj))))))
}))
}