module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all e1,e2,e3: (one Node) {
((before ((e2->e3) in adj)) => ((e1->e2) in adj))
})
}