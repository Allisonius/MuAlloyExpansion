module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(all x: (one Node) {
(Node in (x.(^(~(*adj)))))
})
}