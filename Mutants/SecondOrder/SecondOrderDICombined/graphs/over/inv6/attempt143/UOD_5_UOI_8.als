module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all a,b: (one Node) {
((a in (one (b.adj))) || (b in (a.(*adj))))
})
}