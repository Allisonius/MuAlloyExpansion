module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all e1: (one Node) {
((e1.(*adj)) in (e1.(^(~adj))))
})
}