module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(one a,b: (one Node) {
((a in (b.(^(~adj)))) || (b in (a.(^adj))))
})
}