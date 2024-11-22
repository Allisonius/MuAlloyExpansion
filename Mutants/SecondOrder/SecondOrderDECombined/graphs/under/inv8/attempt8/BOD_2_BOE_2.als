module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all e1,e2,e3: (one Node) {
(((e1->e2) in adj) && (adj in (e2->e3)))
})
}