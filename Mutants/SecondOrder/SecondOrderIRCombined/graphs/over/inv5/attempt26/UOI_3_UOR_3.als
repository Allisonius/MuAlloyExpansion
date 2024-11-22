module unknown
open util/integer [] as integer
sig Node {
adj: (some Node)
}
pred inv5[] {
(all n1: (one Node) {
(!(n1 in (some (n1.(^adj)))))
})
}