module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all e1,e3: (one Node) {
(e1 in (e1.(^adj)))
})
}