module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv6[] {
(all disj n,n1: (one Node) {
(once ((n in (n1.(^adj))) || ((n.(^adj)) in n1)))
})
}