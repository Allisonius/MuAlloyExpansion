module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(lone disj n,x: (one Node) {
((n in (x.(^adj))) || (n != (x.(~(^adj)))))
})
}