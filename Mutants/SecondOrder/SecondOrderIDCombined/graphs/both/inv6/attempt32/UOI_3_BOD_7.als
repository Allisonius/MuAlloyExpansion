module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all n1,n2: (one Node) {
((n1 in (some (n2.(^adj)))) <=> (n2 in n1))
})
}