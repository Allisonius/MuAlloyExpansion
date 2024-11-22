module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(lone e1,e2: (one Node) {
((e2 in e1) || (e2 in ((*adj).e1)))
})
}