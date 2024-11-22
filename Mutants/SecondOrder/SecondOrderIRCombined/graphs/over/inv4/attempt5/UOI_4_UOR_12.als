module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(all v: (one Node) {
(one ((v.(~(*adj))) + v))
})
}