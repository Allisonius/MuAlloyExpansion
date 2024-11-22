module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(one e1,e2,e3: (one Node) {
((((e1->e2) in (~adj)) && ((e2->e3) in adj)) => ((e1->e2) in adj))
})
}