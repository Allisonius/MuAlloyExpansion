module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv5[] {
(no n1: (one Node) {
(lone (n1.(^adj)))
})
}