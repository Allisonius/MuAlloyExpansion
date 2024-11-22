module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
(all a,b: (one Node) {
(((a.(^adj)) in b) && (a in (b.(^adj))))
})
}