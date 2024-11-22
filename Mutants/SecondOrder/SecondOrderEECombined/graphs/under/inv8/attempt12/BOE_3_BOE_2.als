module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all e1,e3: (one Node) {
(some e2: (one Node) {
(((adj in (e1->e2)) && (adj in (e2->e3))) => ((e1->e2) in adj))
})
})
}