module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(lone n1,n2: (one Node) {
(((n1.(^(adj + (~adj)))) in n2) || (n1 in (n2.(^(adj + (~adj))))))
})
}