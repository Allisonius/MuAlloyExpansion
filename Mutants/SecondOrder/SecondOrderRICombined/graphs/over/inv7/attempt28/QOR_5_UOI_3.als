module unknown
open util/integer [] as integer
sig Node {
adj: (set Node)
}
pred inv7[] {
(lone n: (one Node),x: (one Node) {
(once ((n in (x.(^adj))) && (x in (n.(^adj)))))
})
}