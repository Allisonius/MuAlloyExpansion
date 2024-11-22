module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(some disj x,y: (one Node) {
(x in (y.(*(^adj))))
})
}