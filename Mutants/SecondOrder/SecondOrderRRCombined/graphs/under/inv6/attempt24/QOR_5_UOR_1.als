module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
(lone n: (one Node) {
(some (n->((n.(*adj)) + (n.(^(~adj))))))
})
}