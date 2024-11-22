module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(no disj x,y: (one Node) {
(x in (y.(*(^adj))))
})
}