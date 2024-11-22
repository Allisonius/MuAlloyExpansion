module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv6[] {
(all e1,e2: (one Node) {
((e2 in (one (e1.(*adj)))) || (e2 in ((*adj).e1)))
})
}