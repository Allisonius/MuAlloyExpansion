module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(some e1,e2,e3: (one Node) {
((e1->e2) in adj)
})
}