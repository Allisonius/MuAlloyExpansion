module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(one x,y: (one Node) {
(x in (some (y.(^adj))))
})
}