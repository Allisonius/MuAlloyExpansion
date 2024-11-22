module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv2[] {
(no n: (one Node) {
(n in ((n.adj).(^(~adj))))
})
}