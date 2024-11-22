module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(some disj n,x: (one Node) {
((n in (x.(^adj))) || (n in (x.(~(^adj)))))
})
}