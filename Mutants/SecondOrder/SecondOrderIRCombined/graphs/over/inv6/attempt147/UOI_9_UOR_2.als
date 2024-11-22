module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(all a,b: (one Node) {
((b in (some (a.(^adj)))) && (a in (b.(^adj))))
})
}