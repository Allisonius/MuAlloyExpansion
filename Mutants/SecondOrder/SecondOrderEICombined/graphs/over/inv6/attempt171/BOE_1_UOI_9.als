module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all e1,e2: (one Node) {
(((e1.(*(~adj))) in e2) || (e2 in ((*adj).e1)))
})
}