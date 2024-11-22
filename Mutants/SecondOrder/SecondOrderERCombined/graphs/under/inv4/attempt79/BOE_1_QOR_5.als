module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(lone n: (one Node),x: (one Node) {
(((x.(^adj)) in n) && (x in (n.(^adj))))
})
}