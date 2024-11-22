module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(one disj n1,n2: (one Node) {
(historically ((n2 in (n1.(*adj))) && (n1 in (n2.(*adj)))))
})
}