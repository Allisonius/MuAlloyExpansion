module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(some n1,n2: (some Node) {
(n2 in ((n1.(^adj)) - n1))
})
}