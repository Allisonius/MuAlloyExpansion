module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv8[] {
(all n1: (one Node) {
(some n2: (one ((n1.adj).(^adj))) {
(n2 in (one (n1.adj)))
})
})
}