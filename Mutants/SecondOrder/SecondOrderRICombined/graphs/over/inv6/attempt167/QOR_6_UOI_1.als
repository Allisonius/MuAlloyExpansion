module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(one disj n,x: (one Node) {
(before ((n in (x.(^adj))) || (x in (n.(^adj)))))
})
}