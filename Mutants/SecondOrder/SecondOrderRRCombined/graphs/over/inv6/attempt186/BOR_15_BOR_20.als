module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all a: (one Node),b: (one Node) {
((b = (a.(^adj))) || (b !in (a.(~(^adj)))))
})
}