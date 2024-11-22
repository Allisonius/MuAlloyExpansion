module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(historically ((some adj) && (lone n: (one Node) {
(Node in (n.(^(adj + (~adj)))))
})))
}