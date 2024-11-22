module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(some e1,e2: (lone Node) {
((e2 in (e1.(*adj))) || (e2 in ((*adj).e1)))
})
}