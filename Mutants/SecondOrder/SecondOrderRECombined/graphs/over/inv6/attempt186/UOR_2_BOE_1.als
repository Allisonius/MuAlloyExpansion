module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(all a: (one Node),b: (one Node) {
(((a.(^adj)) in b) || (b in (a.(~(^adj)))))
})
}