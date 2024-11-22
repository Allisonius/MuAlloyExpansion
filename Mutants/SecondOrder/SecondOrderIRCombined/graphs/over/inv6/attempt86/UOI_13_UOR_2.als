module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(all n1,n2: (one Node) {
(n2 in (n1.(^(adj + (^(~adj))))))
})
}