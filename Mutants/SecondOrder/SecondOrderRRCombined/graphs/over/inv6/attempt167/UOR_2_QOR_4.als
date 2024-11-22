module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(no disj n,x: (one Node) {
((n in (x.(^adj))) || (x in (n.(^adj))))
})
}