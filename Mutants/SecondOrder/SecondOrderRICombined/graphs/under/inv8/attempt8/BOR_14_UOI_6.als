module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all e1,e2,e3: (one Node) {
((after (((e1->e2) != adj) && ((e2->e3) in adj))) => ((e1->e2) in adj))
})
}