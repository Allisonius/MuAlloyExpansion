module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(no disj n,x: (one Node) {
(historically ((n in (x.(^adj))) || (x in (n.(^adj)))))
})
}