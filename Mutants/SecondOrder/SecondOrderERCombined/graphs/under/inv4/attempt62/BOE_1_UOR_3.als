module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv4[] {
(all x,y: (one Node) {
(((y.(^adj)) in x) && (y in (x.(^adj))))
})
}