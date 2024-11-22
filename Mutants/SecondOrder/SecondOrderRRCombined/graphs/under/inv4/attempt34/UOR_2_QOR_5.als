module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv4[] {
(lone x: (one Node) {
(Node in (x.(*adj)))
})
}