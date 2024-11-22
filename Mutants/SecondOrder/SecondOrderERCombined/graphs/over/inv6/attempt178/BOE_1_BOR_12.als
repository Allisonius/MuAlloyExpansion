module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all disj n,x: (one Node) {
(((x.(^adj)) = n) || (n in (x.(~(^adj)))))
})
}