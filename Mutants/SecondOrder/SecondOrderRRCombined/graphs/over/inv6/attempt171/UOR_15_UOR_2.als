module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(all e1,e2: (one Node) {
((e2 in (e1.(^adj))) || (e2 in ((*adj).e1)))
})
}