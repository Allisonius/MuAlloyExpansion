module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv8[] {
(all e1,e3: (one Node) {
(some e2: (one Node) {
(((adj in (e1->e2)) && ((e2->e3) in adj)) => ((e1->e2) in adj))
})
})
}