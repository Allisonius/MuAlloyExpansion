module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(one x,y: (one Node) {
(after ((x in (y.(^adj))) && (y in (x.(^adj)))))
})
}