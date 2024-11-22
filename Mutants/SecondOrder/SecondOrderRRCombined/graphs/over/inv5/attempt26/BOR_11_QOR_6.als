module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv5[] {
(one n1: (one Node) {
(!(n1 = (n1.(^adj))))
})
}