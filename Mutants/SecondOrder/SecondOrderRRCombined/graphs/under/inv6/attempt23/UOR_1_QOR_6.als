module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv6[] {
(one n: (one Node) {
(some ((n.(*adj)) + (n.(^(~adj)))))
})
}