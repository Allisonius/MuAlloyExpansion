module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv5[] {
(some n1: (lone Node) {
(!(n1 in (n1.(^adj))))
})
}