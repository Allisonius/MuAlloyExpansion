module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv4[] {
(one n1,n2: (one Node) {
((n2.(^adj)) in n1)
})
}