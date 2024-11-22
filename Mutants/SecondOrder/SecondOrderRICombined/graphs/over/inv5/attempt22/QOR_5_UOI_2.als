module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv5[] {
(lone n1: (one Node) {
(n1 in (one (n1.(^adj))))
})
}