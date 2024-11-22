module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv5[] {
(no n1: (one Node) {
(!(n1 in (some (n1.(^adj)))))
})
}