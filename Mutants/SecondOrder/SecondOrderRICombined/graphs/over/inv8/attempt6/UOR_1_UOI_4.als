module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv8[] {
(all e1: (one Node) {
((e1.(*adj)) in (one (e1.adj)))
})
}