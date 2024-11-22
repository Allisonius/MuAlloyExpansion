module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
(all e1,e2: (one Node) {
(((e1.(*adj)) + ((*adj).e1)) in e2)
})
}