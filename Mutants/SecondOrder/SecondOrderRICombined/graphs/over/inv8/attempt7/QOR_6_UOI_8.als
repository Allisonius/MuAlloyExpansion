module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(one e1,e3: (one Node) {
((e1.(*adj)) in (some (e1.adj)))
})
}