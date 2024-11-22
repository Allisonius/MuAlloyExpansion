module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(lone x: (one Node) {
(Node in (one (x.(*adj))))
})
}