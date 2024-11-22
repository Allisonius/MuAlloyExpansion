module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
(lone a,b: (one Node) {
((b in (a.(^adj))) && (a in (b.(^adj))))
})
}