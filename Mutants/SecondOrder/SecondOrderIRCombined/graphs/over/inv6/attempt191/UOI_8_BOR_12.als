module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n1,n2: (one Node) {
((n2 in (one (n1.(^(adj + (~adj)))))) || (n1 != (n2.(^(adj + (~adj))))))
})
}