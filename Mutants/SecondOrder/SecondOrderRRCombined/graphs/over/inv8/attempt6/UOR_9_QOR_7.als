module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(some e1: (lone Node) {
((e1.(*adj)) in (e1.adj))
})
}