module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
(all a: (one Node),b: (one Node) {
(after ((b in (a.(^adj))) || (b in (a.(~(^adj))))))
})
}