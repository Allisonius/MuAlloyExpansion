module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(no x,y: (one Node) {
((x in (y.(^adj))) && (y in (x.(^adj))))
})
}