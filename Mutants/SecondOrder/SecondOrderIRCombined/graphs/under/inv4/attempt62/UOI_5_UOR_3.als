module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv4[] {
(all x,y: (one Node) {
(eventually ((x in (y.(^adj))) && (y in (x.(^adj)))))
})
}