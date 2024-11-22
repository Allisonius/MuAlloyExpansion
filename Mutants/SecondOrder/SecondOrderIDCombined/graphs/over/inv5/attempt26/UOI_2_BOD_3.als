module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv5[] {
(all n1: (one Node) {
(!(one (n1.(^adj))))
})
}