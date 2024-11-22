module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv4[] {
(all x: (one Node) {
(Node in (some (x.(*adj))))
})
}