module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(one a: (one Node) {
(((a.(^adj)) in a) => (a in (a.(^adj))))
})
}