module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(all disj x,y: (one Node) {
(x = (y.(*(^adj))))
})
}