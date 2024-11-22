module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(no disj n,x: (one Node) {
(always ((n in (x.(^adj))) || (n in (x.(~(^adj))))))
})
}