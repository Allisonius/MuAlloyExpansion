module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv6[] {
(some n: (one Node) {
(some (n->((n.(*adj)) + (n.(^(~adj))))))
})
}