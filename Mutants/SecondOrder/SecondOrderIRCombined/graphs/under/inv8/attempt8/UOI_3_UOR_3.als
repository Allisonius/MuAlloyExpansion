module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv8[] {
(all e1,e2,e3: (one Node) {
((once (((e1->e2) in adj) && ((e2->e3) in adj))) => ((e1->e2) in adj))
})
}