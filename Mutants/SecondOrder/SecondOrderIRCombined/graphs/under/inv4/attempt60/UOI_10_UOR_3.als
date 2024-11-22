module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv4[] {
(all a: (one Node) {
((a in (a.(^adj))) => (a in (one (a.(^adj)))))
})
}