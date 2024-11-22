module unknown
open util/integer [] as integer
sig Node {
adj: (lone Node)
}
pred inv4[] {
(all n1: (one Node) {
(no n2: (one Node) {
((n1.(^adj)) !in n2)
})
})
}