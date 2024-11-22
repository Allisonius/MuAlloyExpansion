module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(no x,y: (one Node) {
(historically ((x in (y.(^adj))) && (y in (x.(^adj)))))
})
}