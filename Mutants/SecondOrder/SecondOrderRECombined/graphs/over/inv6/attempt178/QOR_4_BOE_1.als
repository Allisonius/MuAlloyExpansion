module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(no disj n,x: (one Node) {
(((x.(^adj)) in n) || (n in (x.(~(^adj)))))
})
}