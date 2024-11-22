module unknown
open util/integer [] as integer
sig Node {
adj: (one Node)
}
pred inv5[] {
(all n1: (one Node) {
(!(n1 in n1))
})
}