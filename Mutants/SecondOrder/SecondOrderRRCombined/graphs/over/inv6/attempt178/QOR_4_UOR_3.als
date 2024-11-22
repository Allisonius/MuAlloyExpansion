module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv6[] {
(no disj n,x: (one Node) {
((n in (x.(^adj))) || (n in (x.(~(^adj)))))
})
}