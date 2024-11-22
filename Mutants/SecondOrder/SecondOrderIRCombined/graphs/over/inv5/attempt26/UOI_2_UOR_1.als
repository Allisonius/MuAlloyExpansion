module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv5[] {
(all n1: (one Node) {
(!(n1 in (one (n1.(^adj)))))
})
}