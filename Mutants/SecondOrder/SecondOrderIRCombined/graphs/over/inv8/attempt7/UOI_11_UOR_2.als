module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv8[] {
(all e1,e3: (one Node) {
((e1.(*adj)) in (e1.(^adj)))
})
}