module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some disj n,x: (one Node) {
(after ((n in (x.(^adj))) || (n in (x.(~(^adj))))))
})
}